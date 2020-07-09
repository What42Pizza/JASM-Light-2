// Everything regarding the Renderer

// Memory locations:
// 0xF000 - 0xF35F: Palette
// 0xF400 - 0xFBFA: Characters
//   0xFBFB: ScreenX
//   0xFBFC: ScreenY
//   0xFBFD: HBlank flag
//   0xFBFE: VBlank flag
//   0xFBFF: FBlank flag
// 0xFC00 - 0xFF80: Screen chars


// Screen chars:
// The screen is 256x224 pixels, and each character is 8x8. That means the screen is made 32x28 chars.
// You can have 227 characters, so each character position on the screen is specified with one byte. That means the screen mapping takes 896 bytes.


// Characters:
// Each character is 8x8 pixels. Each character can choose from one of 56 palettes, with each palette defining two colors.
// Each pixel for the characters is defined by one bit. If the bit is low, it will be one of first color from the palette, and if it's high then it will have the second color.
// Characters have 64 bits for the pixels, a byte for the chosen palette, and 227 definable characters, which totals out just below 2 KB.


// Palette:
// There are 56 palettes, with each taking 18 bits.
// The first 9 bits go to the one color, and the last 9 form the other color.
// There are 3 bits per channel, so 3 for red, 3 for green, and 3 for blue. This makes 27 different colors, and 729 possible palettes.
// With 56 palettes and 18 bits per palette, the palette data takes a total of 1008 bytes.





int PaletteStart = 0xF000;
int CharsStart   = 0xF400;
int ScreenStart  = 0xFC00;



short ScreenCharWidth = 32;

short ScreenX = 0;
short ScreenY = 0;
boolean HBlank = false;
boolean VBlank = false;
boolean FBlank = false;

short ScreenCharIndex = 255;
short CurrChar = 0;
short CurrPixels = 0x00;
short CurrPalette1 = 0;
short CurrPalette2 = 0;
short CharPixelX = 0x80;





color GetColor (short XPos, short YPos) {
  
  if (XPos == 0 && (YPos & 0x07) != 0) { // Decrease index every verticle change, except for every 8 verticle pixels
    ScreenCharIndex = B.sub(ScreenCharIndex, (short)ScreenCharWidth);
  }
  
  if ((XPos & 0x07) == 0) { // Increase index every 8 horizontal pixels (always true when last 'if' is true)
    ScreenCharIndex = B.inc(ScreenCharIndex);
    CurrChar = GetRAM(ScreenStart + ScreenCharIndex);
    CurrChar = (short)((CurrChar << 3) + CurrChar); // *9
  }
  
  CharPixelX = (short)(CharPixelX << 1); // Loop powers of 2 from 1 - 128 inclusive
  if (CharPixelX > 0x80) {
    CharPixelX = 1;
  }
  
  return 0;
}
