This is an educational tale of some strange panels and getting them to work. Since their availability is pretty non-existential this will not probably be useful to others as-is, just thought you might be interested to hear about this.

Helsinki Hacklab recently came into possession of dozens of modules from Absen C9 led screen system ( http://www.usabsen.com/mobile-creative-led/ ). The panels are 8x64 1/4 scan 9mm pitch. We are still wondering what to use them for, but this is the tale of their properties.

Internally they are made of two pcbs, one is the left half and one the right. Each pcb has a 2x8 pin 2.54mm pitch male row header for input ( https://www.flickr.com/photos/helsinkihacklab/40242725421 ). It takes one set of rgb, a,b (and not connected c), clk, latch and oe signals + 3 pins of vcc and 4 pins of gnd.

So one such module can be driven from one hub75 input signal routing the rgb1 to one side and rgb to the other. I chose rgb1 for the right side viewed from the back of the modules.

The pixel mapping for the modules is the weirdest I have heard of. First of all the mapping can be broken into 4x4 squares of leds for a half panel. The squares snake through the panel halves like this:

| | | | |
| ---      | ---       | ---       | ---       |
| 0 | 3 | 4 | 7 |
| 1 | 2 | 5 | 6 |

Inside each block the x coordinate is inverted, meaning that the actual top left pixel is x=3, y=0 from the hub75 data.

And because the way the halves are made as different pcbs rows 0-3 will go to the left half and 4-7 to the right.

The one major drawback of the modules is that they have no data output at all and thus can't be chained. So to make controlling them little bit easier we decided to make two such panels behave like 1/8 scan 16x64 module by adding little logic to the c and oe lines (using one 7402 quad 2-input nor gate ic) that we get a truth table like this

|OE |C |OE1 |OE2 |
| ---      | ---       | ---       | ---       |
| 0 | 0 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 1 |
| 1 | 1 | 1 | 1 |

Using this arrangement the mapping again changes a little with rows 0-3 going to the top-left 8x32, 4-7 to bottom-left 8x32, 8-11 to top-right and 12-15 to bottom left.

This whole stack of weirdness can finally be addressed by the kludges in https://gist.github.com/depili/86e79755df38fb38982c63de4300c90f
