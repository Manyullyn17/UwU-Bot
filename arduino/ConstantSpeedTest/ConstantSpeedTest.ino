// ConstantSpeed.pde
// -*- mode: C++ -*-
//
// Shows how to run AccelStepper in the simplest,
// fixed speed mode with no accelerations
/// \author  Mike McCauley (mikem@airspayce.com)
// Copyright (C) 2009 Mike McCauley
// $Id: ConstantSpeed.pde,v 1.1 2011/01/05 01:51:01 mikem Exp mikem $

#include <AccelStepper.h>

#define STEPPER1_DIR_PIN 25
#define STEPPER1_STEP_PIN 26

#define STEPPER2_DIR_PIN 32
#define STEPPER2_STEP_PIN 33

AccelStepper stepper1(AccelStepper::DRIVER, STEPPER1_STEP_PIN, STEPPER1_DIR_PIN);
AccelStepper stepper2(AccelStepper::DRIVER, STEPPER2_STEP_PIN, STEPPER2_DIR_PIN);

void setup()
{  
   stepper1.setMaxSpeed(1000);
   stepper1.setSpeed(500);
   stepper2.setMaxSpeed(1000);
   stepper2.setSpeed(-500); 
}

void loop()
{  
   stepper1.runSpeed();
   stepper2.runSpeed();
}
