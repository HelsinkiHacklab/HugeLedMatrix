// -*- mode: c++; c-basic-offset: 2; indent-tabs-mode: nil; -*-
// Small example how to use the library.
// For more examples, look at demo-main.cc
//
// This code is public domain
// (but note, that the led-matrix library this depends on is GPL v2)

#include "led-matrix.h"

#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include <signal.h>
#include <iostream>

using rgb_matrix::GPIO;
using rgb_matrix::RGBMatrix;
using rgb_matrix::Canvas;

volatile bool interrupt_received = false;
static void InterruptHandler(int signo) {
  interrupt_received = true;
}

int main(int argc, char *argv[]) {
  RGBMatrix::Options defaults;
  defaults.hardware_mapping = "regular";  // or e.g. "adafruit-hat"
  Canvas *canvas = rgb_matrix::CreateMatrixFromFlags(&argc, &argv, &defaults);
  if (canvas == NULL)
    return 1;

  // It is always good to set up a signal handler to cleanly exit when we
  // receive a CTRL-C for instance. The DrawOnCanvas() routine is looking
  // for that.
  signal(SIGTERM, InterruptHandler);
  signal(SIGINT, InterruptHandler);
  // canvas->Fill(0,255,0);
  std::cout << "int mapping[" << canvas->width() << "][" << canvas->height() << "][2] = {" << std::endl;
  for (int i = 0; i < canvas->width(); i++) {
    std::cout << "{ ";
    for (int j = 0; j < canvas->height(); j++) {
      if (interrupt_received == true) {
        break;
      }
      int x, y, block_x, block_y, block;
      block = 0;
      block_x = (i%32/4) ;
      block_y = (j%8)/4;
      switch ((block_x * 2) + block_y) {
        case 1: block = 1; break;
        case 2: block = 3; break;
        case 3: block = 2; break;
        case 4: block = 4; break;
        case 5: block = 5; break;
        case 6: block = 7; break;
        case 7: block = 6; break;
        case 8: block = 8; break;
        case 9: block = 9; break;
        case 10: block = 11; break;
        case 11: block = 10; break;
        case 12: block = 12; break;
        case 13: block = 13; break;
        case 14: block = 15; break;
        case 15: block = 14; break;
      }

      int start_x, start_y;

      start_x = block * 4;
      start_y = 8 * (i / 32);

      int sub_x;
      switch (i % 4) {
        case 0: sub_x = 3; break;
        case 1: sub_x = 2; break;
        case 2: sub_x = 1; break;
        case 3: sub_x = 0; break;
      }

      x = start_x + sub_x;
      y = start_y + (j % 4) + (4*(j/8));

      std::cout << "{ " << x <<", " << y << "}, ";

      //std::cout << "arr["<<i<<","<<j<< "][0]= " << x << ";" << std::endl;
      //std::cout << "arr["<<i<<","<<j<< "][1]= " << y << ";" << std::endl;
      //std::cout << std::endl;
      // std::cout << i << "," << j << " -> " << x << "," << y << " block: " << block << std::endl;

      // canvas->Fill(0,0,0);
      canvas->SetPixel(x,y,255,0,0);

      usleep(5 * 1000);
      //std::cin.ignore();
    }
    std::cout << "}," << std::endl;
  }

  // Animation finished. Shut down the RGB matrix.
  canvas->Clear();
  delete canvas;

  return 0;
}
