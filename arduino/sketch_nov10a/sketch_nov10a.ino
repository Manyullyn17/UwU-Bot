// defines pins
#define stepPin 26
#define dirPin 25
#define speed 250

void setup() {
  // Sets the two pins as Outputs
  pinMode(stepPin,OUTPUT); 
  pinMode(dirPin,OUTPUT);
}
void loop() {
  digitalWrite(dirPin,HIGH); // Enables the motor to move in a particular direction
  for(int x = 0; x < 8000; x++) {
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(speed);    // by changing this time delay between the steps we can change the rotation speed
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(speed); 
  }
  delay(100);
  digitalWrite(dirPin,LOW); // Enables the motor to move in a particular direction
  for(int x = 0; x < 8000; x++) {
    digitalWrite(stepPin,HIGH); 
    delayMicroseconds(speed);    // by changing this time delay between the steps we can change the rotation speed
    digitalWrite(stepPin,LOW); 
    delayMicroseconds(speed); 
  }
  delay(100);
}
