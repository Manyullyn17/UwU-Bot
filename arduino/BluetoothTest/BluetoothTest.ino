//#include <I2S.h>

//#include <SoftwareSerial.h>
#include <BluetoothSerial.h>

BluetoothSerial ESP_BT;

void setup() {
  ESP_BT.begin("ESP32");  // set the name of the device
  ESP_BT.println("Bluetooth device is ready to pair");
  Serial.begin(9600);
}

void loop() {
  if (ESP_BT.available()) {
    String incomingData = ESP_BT.readString();
    // Do something with the incoming data
    Serial.println(incomingData);
  }
}
