#include <Wire.h>
#include <AFMotor.h>
#include <HCSR04.h>
AF_DCMotor m1(1);
AF_DCMotor m2(2);
AF_DCMotor m3(3);
AF_DCMotor m4(4);
HCSR04 hc(9,10);//(trig pin , echo pin)
int distance;
byte last_channel_1, last_channel_2, last_channel_3, last_channel_4;
unsigned long timer_1, timer_2, timer_3, timer_4, current_time;
int receiver_input[5];
String data;
char Data[11];
int m_speed;
byte turn;
byte reverse = 0;


void setup() 
{
  Wire.begin(8);                // join i2c bus with address #8
  Serial.begin(9600);
  Wire.onRequest(requestEvent);
  
  PCICR |= (1 << PCIE1);                                                    //Set PCIE01 to enable PCMSK1 scan.
  PCMSK1 |= (1 << PCINT8);                                                  //Set PCINT8 (digital input A0) to trigger an interrupt on state change.
  PCMSK1 |= (1 << PCINT9);                                                  //Set PCINT9 (digital input A1)to trigger an interrupt on state change.
  PCMSK1 |= (1 << PCINT10);                                                  //Set PCINT10 (digital input A2)to trigger an interrupt on state change.
  PCMSK1 |= (1 << PCINT11);                                                         
}

void loop() 
{
  m_speed = map(receiver_input[2], 900, 1900, 0, 255);
  if (m_speed>255) m_speed = 255;
  else if (m_speed<30) m_speed = 0;
  
  if (receiver_input[3]>1500) reverse = 1;
  else if (receiver_input[3]<1500) reverse = 0;
  
  if (receiver_input[1]>1700) turn = 1; //right
  else if (receiver_input[1]<1200) turn = 0; //left
  else turn = 2;
  
  
  m1.setSpeed(m_speed);
  m2.setSpeed(m_speed);
  m3.setSpeed(m_speed);
  m4.setSpeed(m_speed);
  
  //forward
  if (reverse == 0 && turn == 2){
    m1.run(FORWARD);
    m2.run(FORWARD);
    m3.run(FORWARD);
    m4.run(FORWARD);}
    
  //backward
  else if (reverse == 1 && turn ==2)
  {
    m1.run(BACKWARD);
    m2.run(BACKWARD);
    m3.run(BACKWARD);
    m4.run(BACKWARD);
  }
  
  //right
  else if (turn == 0)
  {
    m1.run(BACKWARD);
    m2.run(BACKWARD);
    m3.run(FORWARD);
    m4.run(FORWARD);
  }
  
  //left
  else if (turn == 1)
  {
    m3.run(BACKWARD);
    m4.run(BACKWARD);
    m1.run(FORWARD);
    m2.run(FORWARD);
  }

  data = String(m_speed) +"-" + turn + "-" + String(reverse);
  Serial.println(data);
    
}

void requestEvent(){
  
  data.toCharArray(Data, 11);
  Wire.write(m_speed); // sends five bytes 
  Wire.write(reverse); // sends five bytes
  Wire.write(turn); // sends five bytes 

  }

ISR(PCINT1_vect)
{
  current_time = micros();
  //Channel 1=========================================
  if(PINC & B00000001){                                                     //Is input A0 high?
    if(last_channel_1 == 0){                                                //Input A0 changed from 0 to 1.
      last_channel_1 = 1;                                                   //Remember current input state.
      timer_1 = current_time;                                               //Set timer_1 to current_time.
    }
  }
  else if(last_channel_1 == 1){                                             //Input A0 is not high and changed from 1 to 0.
    last_channel_1 = 0;                                                     //Remember current input state.
    receiver_input[1] = current_time - timer_1;                             //Channel 1 is current_time - timer_1.
  }
  //Channel 2=========================================
  if(PINC & B00000010 ){                                                    //Is input A1 high?
    if(last_channel_2 == 0){                                                //Input A1 changed from 0 to 1.
      last_channel_2 = 1;                                                   //Remember current input state.
      timer_2 = current_time;                                               //Set timer_2 to current_time.
    }
  }
  else if(last_channel_2 == 1){                                             //Input A1 is not high and changed from 1 to 0.
    last_channel_2 = 0;                                                     //Remember current input state.
    receiver_input[2] = current_time - timer_2;                             //Channel 2 is current_time - timer_2.
  }
  //Channel 3=========================================
  if(PINC & B00000100 ){                                                    //Is input A2 high?
    if(last_channel_3 == 0){                                                //Input A2 changed from 0 to 1.
      last_channel_3 = 1;                                                   //Remember current input state.
      timer_3 = current_time;                                               //Set timer_3 to current_time.
    }
  }
  else if(last_channel_3 == 1){                                             //Input A2 is not high and changed from 1 to 0.
    last_channel_3 = 0;                                                     //Remember current input state.
    receiver_input[3] = current_time - timer_3;                             //Channel 3 is current_time - timer_3.

  }
  //Channel 4=========================================
  if(PINC & B00001000 ){                                                    //Is input A3 high?
    if(last_channel_4 == 0){                                                //Input A3 changed from 0 to 1.
      last_channel_4 = 1;                                                   //Remember current input state.
      timer_4 = current_time;                                               //Set timer_4 to current_time.
    }
  }
  else if(last_channel_4 == 1){                                             //Input A3 is not high and changed from 1 to 0.
    last_channel_4 = 0;                                                     //Remember current input state.
    receiver_input[4] = current_time - timer_4;                             //Channel 4 is current_time - timer_4.
  }
}
