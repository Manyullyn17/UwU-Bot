/* Derived from Adafruit RGB_matrix_Panel library */

#include <Adafruit_GFX.h>   // Core graphics library
#include <P3RGB64x32MatrixPanel.h>
#include <Fonts/FreeSerif12pt7b.h>

// constructor with default pin wiring
P3RGB64x32MatrixPanel matrix;

// use this constructor for custom pin wiring instead of the default above
// these pins are an example, you may modify this according to your needs
//P3RGB64x32MatrixPanel matrix(25, 26, 27, 21, 22, 23, 15, 32, 33, 12, 16, 17, 18);

const unsigned char UwU[] PROGMEM = {
  // 'UwU face', 64x32px
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 
  0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 
  0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 
  0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 
  0x00, 0x1c, 0x07, 0x00, 0x00, 0xe0, 0x38, 0x00, 0x00, 0x0c, 0x06, 0x00, 0x00, 0x60, 0x30, 0x00, 
  0x00, 0x0c, 0x06, 0x00, 0x00, 0x60, 0x30, 0x00, 0x00, 0x06, 0x0c, 0x00, 0x00, 0x30, 0x60, 0x00, 
  0x00, 0x07, 0x1c, 0x00, 0x00, 0x38, 0xe0, 0x00, 0x00, 0x03, 0xf8, 0x00, 0x00, 0x1f, 0xc0, 0x00, 
  0x00, 0x01, 0xf0, 0x00, 0x00, 0x0f, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x41, 0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x63, 0xc6, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x36, 0x6c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x38, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x08, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char love[] PROGMEM = {
  // 'love face', 64x32px
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x9e, 0x00, 0x00, 0x79, 0xe0, 0x00, 
  0x00, 0x0f, 0xff, 0x00, 0x00, 0xff, 0xf0, 0x00, 0x00, 0x1c, 0xf3, 0x80, 0x01, 0xcf, 0x38, 0x00, 
  0x00, 0x18, 0x61, 0x80, 0x01, 0x86, 0x18, 0x00, 0x00, 0x18, 0x01, 0x80, 0x01, 0x80, 0x18, 0x00, 
  0x00, 0x18, 0x01, 0x80, 0x01, 0x80, 0x18, 0x00, 0x00, 0x0c, 0x03, 0x00, 0x00, 0xc0, 0x30, 0x00, 
  0x00, 0x0e, 0x07, 0x00, 0x00, 0xe0, 0x70, 0x00, 0x00, 0x07, 0x0e, 0x00, 0x00, 0x70, 0xe0, 0x00, 
  0x00, 0x03, 0x9c, 0x00, 0x00, 0x39, 0xc0, 0x00, 0x00, 0x01, 0xf8, 0x00, 0x00, 0x1f, 0x80, 0x00, 
  0x00, 0x00, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x06, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x02, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x60, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x0c, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x30, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x06, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x01, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char sleepy[] PROGMEM = {
  // 'sleepy face', 64x32px
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x80, 0x01, 0x00, 0x08, 0x00, 
  0x00, 0x18, 0x01, 0x80, 0x01, 0x80, 0x18, 0x00, 0x00, 0x18, 0x01, 0x80, 0x01, 0x80, 0x18, 0x00, 
  0x00, 0x0c, 0x03, 0x00, 0x00, 0xc0, 0x30, 0x00, 0x00, 0x06, 0x06, 0x00, 0x00, 0x60, 0x60, 0x00, 
  0x00, 0x06, 0x06, 0x00, 0x00, 0x60, 0x60, 0x00, 0x00, 0x03, 0x0c, 0x00, 0x00, 0x30, 0xc0, 0x00, 
  0x00, 0x03, 0x0c, 0x00, 0x00, 0x30, 0xc0, 0x00, 0x00, 0x01, 0x98, 0x00, 0x00, 0x19, 0x83, 0xe0, 
  0x00, 0x01, 0x98, 0x00, 0x00, 0x19, 0x80, 0x40, 0x00, 0x00, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x80, 
  0x00, 0x00, 0x60, 0x00, 0x00, 0x06, 0x01, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x06, 0x03, 0xe0, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x08, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0xff, 0xff, 0x1c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char suprised[] PROGMEM = {
	// 'suprised face, 64x32px
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x0f, 0x80, 0x00, 
	0x00, 0x07, 0xfc, 0x00, 0x00, 0x3f, 0xe0, 0x00, 0x00, 0x0f, 0x1e, 0x00, 0x00, 0x78, 0xf0, 0x00, 
	0x00, 0x0c, 0x06, 0x00, 0x00, 0x60, 0x30, 0x00, 0x00, 0x1c, 0x07, 0x00, 0x00, 0xe0, 0x38, 0x00, 
	0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x18, 0x03, 0x00, 0x00, 0xc0, 0x18, 0x00, 
	0x00, 0x1c, 0x07, 0x00, 0x00, 0xe0, 0x38, 0x00, 0x00, 0x0c, 0x06, 0x00, 0x00, 0x60, 0x30, 0x00, 
	0x00, 0x0f, 0x1e, 0x00, 0x00, 0x78, 0xf0, 0x00, 0x00, 0x07, 0xfc, 0x00, 0x00, 0x3f, 0xe0, 0x00, 
	0x00, 0x01, 0xf0, 0x00, 0x00, 0x0f, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x30, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x0c, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x30, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x0f, 0xf0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0xc0, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char scared[] PROGMEM = {
	// 'scared face, 64x32px
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 
	0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x01, 0xc0, 0x00, 0x00, 0x03, 0x80, 0x00, 
	0x00, 0x00, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x1c, 0x00, 0x00, 
	0x00, 0x00, 0x0e, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x70, 0x00, 0x00, 
	0x00, 0x00, 0x38, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x00, 0x00, 0x0f, 0x00, 0x00, 
	0x00, 0x01, 0xc0, 0x00, 0x00, 0x03, 0x80, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x00, 
	0x00, 0x0e, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x20, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x0e, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0xd8, 0x1b, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x8c, 0x31, 0x80, 0x00, 0x00, 
	0x00, 0x00, 0x03, 0x06, 0x60, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x06, 0x03, 0xc0, 0x60, 0x00, 0x00, 
	0x00, 0x00, 0x0c, 0x01, 0x80, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char sad[] PROGMEM = {
	// 'sad face, 64x32px
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0f, 0xff, 0x00, 0x03, 0xff, 0xc0, 0x00, 
	0x00, 0x0f, 0xff, 0x00, 0x03, 0xff, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 
	0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x3e, 0x00, 0x00, 0x00, 0x01, 0xf0, 0x00, 
	0x00, 0x3e, 0x00, 0x00, 0x00, 0x01, 0xf0, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x1c, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x01, 0xb0, 0x36, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x18, 0x63, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x06, 0x0c, 0xc1, 0x80, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x07, 0x80, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x18, 0x03, 0x00, 0x60, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char happy [] PROGMEM = {
	// 'happy face, 64x32px
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x20, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x70, 0x00, 0x00, 0x1c, 0x00, 0x00, 
	0x00, 0x00, 0x70, 0x00, 0x00, 0x1c, 0x00, 0x00, 0x00, 0x00, 0xd8, 0x00, 0x00, 0x36, 0x00, 0x00, 
	0x00, 0x01, 0x8c, 0x00, 0x00, 0x63, 0x00, 0x00, 0x00, 0x01, 0x8c, 0x00, 0x00, 0x63, 0x00, 0x00, 
	0x00, 0x03, 0x06, 0x00, 0x00, 0xc1, 0x80, 0x00, 0x00, 0x06, 0x03, 0x00, 0x01, 0x80, 0xc0, 0x00, 
	0x00, 0x06, 0x03, 0x00, 0x01, 0x80, 0xc0, 0x00, 0x00, 0x0c, 0x03, 0x80, 0x03, 0x00, 0x60, 0x00, 
	0x00, 0x18, 0x00, 0xc0, 0x06, 0x00, 0x30, 0x00, 0x00, 0x38, 0x00, 0xe0, 0x0e, 0x00, 0x38, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0xe0, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff, 0xff, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x7f, 0xfe, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

const unsigned char angry [] PROGMEM = {
	// 'Angry Face, 64x32px
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0xc0, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x06, 0x00, 0x00, 
	0x00, 0x00, 0x30, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x18, 0x00, 0x00, 
	0x00, 0x02, 0x0c, 0x00, 0x00, 0x30, 0x40, 0x00, 0x00, 0x07, 0x06, 0x00, 0x00, 0x60, 0xe0, 0x00, 
	0x00, 0x0f, 0x83, 0x00, 0x00, 0xc1, 0xf0, 0x00, 0x00, 0x19, 0xc1, 0x80, 0x01, 0x83, 0x98, 0x00, 
	0x00, 0x1b, 0xe0, 0xc0, 0x03, 0x07, 0xd8, 0x00, 0x00, 0x1f, 0xf0, 0x00, 0x00, 0x0f, 0xf8, 0x00, 
	0x00, 0x1f, 0xf8, 0x00, 0x00, 0x1f, 0xf8, 0x00, 0x00, 0x1f, 0xfc, 0x00, 0x00, 0x3f, 0xf8, 0x00, 
	0x00, 0x0f, 0xf8, 0x00, 0x00, 0x1f, 0xf0, 0x00, 0x00, 0x07, 0xf0, 0x00, 0x00, 0x0f, 0xe0, 0x00, 
	0x00, 0x03, 0xe0, 0x00, 0x00, 0x07, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x01, 0xff, 0xff, 0x80, 0x00, 0x00, 0x00, 0x00, 0x03, 0xff, 0xff, 0xc0, 0x00, 0x00, 
	0x00, 0x00, 0x07, 0x00, 0x00, 0xe0, 0x00, 0x00, 0x00, 0x00, 0x0e, 0x00, 0x00, 0x70, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

void setup() {

  matrix.begin();
  
  while(true)
  {
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, love, 64, 32, matrix.color444(15, 0, 1)); // r, g, b  0 ... 24
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, UwU, 64, 32, matrix.color444(15, 0, 15));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, sleepy, 64, 32, matrix.color444(7, 4, 4));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, suprised, 64, 32, matrix.color444(15, 1, 0));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, scared, 64, 32, matrix.color444(0, 7, 0));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, sad, 64, 32, matrix.color444(0, 0, 15));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, happy, 64, 32, matrix.color444(15, 8, 0));
  delay(1000);
  matrix.fillScreen(matrix.color444(0, 0, 0));
  matrix.drawBitmap(0, 0, angry, 64, 32, matrix.color444(15, 0, 0));
  delay(1000);
  }
}

void loop() {
  // do nothing
}