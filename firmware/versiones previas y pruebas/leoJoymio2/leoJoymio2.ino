/*
Arduino Leonardo Joystick!

*/
int x,botones ,botones_old;

JoyState_t joySt;

void setup()
{
//  Serial.begin(9600);
//  while (!Serial) {
//    ; // wait for serial port to connect. Needed for Leonardo only
//  }
      for(x=2;x<=12;x++)
        {
          pinMode(x, INPUT_PULLUP);
        }
//      pinMode(A0, INPUT_PULLUP);
//      pinMode(A1, INPUT_PULLUP);
//      pinMode(A2, INPUT_PULLUP);
//      pinMode(A3, INPUT_PULLUP);
//      pinMode(A4, INPUT_PULLUP);
//      pinMode(A5, INPUT_PULLUP);

	joySt.xAxis = 128;
	joySt.yAxis = 128;
	joySt.zAxis = 128;
	joySt.xRotAxis = 128;
	joySt.yRotAxis = 128;
	joySt.zRotAxis = 128;
	joySt.throttle = 128;
	joySt.rudder = 128;
	joySt.hatSw1 = 9;
	joySt.hatSw2 = 9;
	joySt.buttons = 0;
        botones=0;
        botones_old=0;  

}


void loop()
{
    for(x=2;x<=12;x++)
      {
       
            if(digitalRead(x)==1) bitClear(botones, (x-2));
              else bitSet(botones, (x-2));
         
      }
   
   if(botones != botones_old)
    {
      botones_old=botones;
      joySt.buttons=botones;
      Joystick.setState(&joySt);
    }  
//      botones= random(511);     
//      Serial.println(botones);
//      Serial.println(joySt.buttons);
//      delay(500);
          

//
//	joySt.xAxis = random(255);
//	joySt.yAxis = random(255);
//	joySt.zAxis = random(255);
//	joySt.xRotAxis = random(255);
//	joySt.yRotAxis = random(255);
//	joySt.zRotAxis = random(255);
//	//joySt.throttle = random(255);
//	joySt.rudder = random(255);
//
//	joySt.throttle++;
//
//
//	joySt.buttons <<= 1;
//	if (joySt.buttons == 0)
//		joySt.buttons = 1;
//
//	joySt.hatSw1++;
//	joySt.hatSw2--;
//
//	if (joySt.hatSw1 > 8)
//		joySt.hatSw1 = 0;
//	if (joySt.hatSw2 > 8)
//		joySt.hatSw2 = 8;
//
//	delay(100);
//
//	if (joySt.throttle > 127)
//		digitalWrite(13, HIGH);
//	else
//		digitalWrite(13, LOW);
//
//
//	// Call Joystick.move
	//Joystick.setState(&joySt);

}
