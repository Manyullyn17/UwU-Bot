#include <Adafruit_GFX.h>     // Core Graphics Library
#include <BluetoothSerial.h>  // Bluetooth Library
#include <AccelStepper.h>     // StepperMotor Controller Library
#include <ESP32-HUB75-MatrixPanel-I2S-DMA.h>
#include <ESP32-VirtualMatrixPanel-I2S-DMA.h>

#define RMOTOR_DIR_PIN 2
#define RMOTOR_STEP_PIN 4

#define LMOTOR_DIR_PIN 14
#define LMOTOR_STEP_PIN 13

#define MAX_SPEED 500  // max speed for motors

#define MS1_PIN 0
#define MS2_PIN 5
#define MS3_PIN 19

// Display Pins
#define R1_PIN 25
#define G1_PIN 26
#define B1_PIN 27
#define R2_PIN 21
#define G2_PIN 22
#define B2_PIN 23

#define A_PIN 12
#define B_PIN 16
#define C_PIN 17
#define D_PIN 18
#define E_PIN -1

#define LAT_PIN 32
#define OE_PIN 33
#define CLK_PIN 15

AccelStepper rmotor(AccelStepper::DRIVER, RMOTOR_STEP_PIN, RMOTOR_DIR_PIN);
AccelStepper lmotor(AccelStepper::DRIVER, LMOTOR_STEP_PIN, LMOTOR_DIR_PIN);

HUB75_I2S_CFG::i2s_pins _pins = { R1_PIN, G1_PIN, B1_PIN, R2_PIN, G2_PIN, B2_PIN, A_PIN, B_PIN, C_PIN, D_PIN, E_PIN, LAT_PIN, OE_PIN, CLK_PIN };
HUB75_I2S_CFG mxconfig(
  64,     // Module width
  32,     // Module height
  1,      // chain length
  _pins  // pin mapping
);
MatrixPanel_I2S_DMA *dma_display = new MatrixPanel_I2S_DMA(mxconfig);

BluetoothSerial ESP_BT;

TaskHandle_t MotorDriver;  // task to drive motors

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

const unsigned char happy[] PROGMEM = {
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

const unsigned char angry[] PROGMEM = {
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

void drawFace(int id) {
  dma_display->clearScreen();

  switch (id) {  // draw face matching id
    case 1:      // UwU
      dma_display->drawBitmap(0, 0, UwU, 64, 32, dma_display->color444(15, 0, 15));
      break;

    case 2:  // happy
      dma_display->drawBitmap(0, 0, happy, 64, 32, dma_display->color444(15, 8, 0));
      break;

    case 3:  // angry
      dma_display->drawBitmap(0, 0, angry, 64, 32, dma_display->color444(15, 0, 0));
      break;

    case 4:  // love
      dma_display->drawBitmap(0, 0, love, 64, 32, dma_display->color444(15, 0, 1));
      break;

    case 5:  // sleepy
      dma_display->drawBitmap(0, 0, sleepy, 64, 32, dma_display->color444(7, 4, 4));
      break;

    case 6:  // sad
      dma_display->drawBitmap(0, 0, sad, 64, 32, dma_display->color444(0, 0, 15));
      break;

    case 7:  // scared
      dma_display->drawBitmap(0, 0, scared, 64, 32, dma_display->color444(0, 7, 0));
      break;

    case 8:  // surprised
      dma_display->drawBitmap(0, 0, suprised, 64, 32, dma_display->color444(15, 1, 0));
      break;

    default:  // default = UwU
      dma_display->drawBitmap(0, 0, UwU, 64, 32, dma_display->color444(15, 0, 15));
      break;
  }
}

void motorRun(void* parameter)  // Task to run motors (runs on separate core)
{
  while (true) {
    rmotor.runSpeed();
    lmotor.runSpeed();
  }
}

void setup() {
  ESP_BT.begin("ESP32");  // set the name of the device

  rmotor.setMaxSpeed(MAX_SPEED);
  lmotor.setMaxSpeed(MAX_SPEED);
  rmotor.setSpeed(0);
  lmotor.setSpeed(0);

  xTaskCreatePinnedToCore(  // run Task motorDriver on Core 0
    motorRun,               // Function to implement the task
    "MotorDriver",          // Name of the task
    10000,                  // Stack size in words
    NULL,                   // Task input parameter
    0,                      // Priority of the task
    &MotorDriver,           // Task handle
    0);                     // Core where the task should run


  pinMode(MS1_PIN, OUTPUT);
  pinMode(MS2_PIN, OUTPUT);
  pinMode(MS3_PIN, OUTPUT);

  // Microstepping
  digitalWrite(MS1_PIN, LOW);
  digitalWrite(MS2_PIN, HIGH);
  digitalWrite(MS3_PIN, LOW);

  dma_display->begin();
  dma_display->setBrightness(90); // 0-255
  dma_display->drawBitmap(0, 0, UwU, 64, 32, dma_display->color444(15, 0, 15)); // draw default Face
}

void loop() {
  if (ESP_BT.available()) {
    String incomingData = ESP_BT.readStringUntil('\0');  // read incoming data

    char cmd = incomingData.charAt(0);  // get cmd from incomingData
    int face, rval, lval, rspeed, lspeed;

    incomingData.remove(0, 1);  // remove cmd from incomingData

    if (cmd == 'F') {
      face = incomingData.toInt();  // face id
      drawFace(face);
    } else if (cmd == 'R') {
      rval = incomingData.toInt();          // speed of rmotor in percent
      rspeed = (MAX_SPEED / 100.0) * rval;  // convert percent to absolute speed
      rmotor.setSpeed(rspeed);
    } else if (cmd == 'L') {
      lval = -incomingData.toInt();         // speed of lmotor in percent
      lspeed = (MAX_SPEED / 100.0) * lval;  // convert percent to absolute speed
      lmotor.setSpeed(lspeed);
    }
  }
}