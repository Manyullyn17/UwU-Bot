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
    //String incomingData = ESP_BT.readString();
    String incomingData = ESP_BT.readStringUntil('\0');
    // Do something with the incoming data
    //Serial.println(incomingData);
    int cmd = incomingData.charAt(0);
    int face;
    int rvalue;
    int lvalue;
    String value = incomingData;
    value.remove(0, 1);

    if (cmd == 'F')
    {
      face = value.toInt();
      Serial.print("Face ");
      Serial.println(face);
    }
    if (cmd == 'R')
    {
      rvalue = value.toInt();
      Serial.print("rval ");
      Serial.println(rvalue);
    }
    if (cmd == 'L')
    {
      lvalue = value.toInt();
      Serial.print("lval ");
      Serial.println(lvalue);
    }
  }
}
