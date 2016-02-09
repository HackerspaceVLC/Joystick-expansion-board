/*
Arduino Leonardo Joystick!

*/
int x, mandos, mandos_old;
unsigned long datos_registro=0,datos_registro_old=0,botones ,botones_old;
int foto=2,reloj=3,datos=4, enable=5;


//JoyState_t joySt;

void setup()
{
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }

        digitalWrite(foto, HIGH);
        digitalWrite(reloj, LOW);
        pinMode(datos, INPUT);
        pinMode(7, INPUT_PULLUP);
}

unsigned long leeRegistrosBotones()
  {
    int valor_bit;
    unsigned long valor_bytes=0;
    digitalWrite(foto, LOW);
    delayMicroseconds(50);
    digitalWrite(foto, HIGH);
    
    for(x=0;x < 32 ; x++)  // primero los botones
      {
        valor_bit=digitalRead(datos);
        valor_bytes |= (valor_bit << ((31) - x));
        digitalWrite(reloj, HIGH);
        delayMicroseconds(20);
        digitalWrite(reloj, LOW);
      }
     return valor_bytes;
  }
  
unsigned long leeRegistrosMando() //siempre despues de leer los botones, no hace foto
  {
    int valor_bit;
    unsigned long valor_bytes=0;
//    digitalWrite(foto, LOW);
//    delayMicroseconds(20);
//    digitalWrite(foto, HIGH);
    
    for(x=0;x < 16 ; x++)  // primero los botones
      {
        valor_bit=digitalRead(datos);
        valor_bytes |= (valor_bit << ((15) - x));
        digitalWrite(reloj, HIGH);
        delayMicroseconds(20);
        digitalWrite(reloj, LOW);
      }
     return valor_bytes;
  }  
 
void lee1registro() 
  {
    digitalWrite(enable, HIGH);
    digitalWrite(foto, LOW);
    delayMicroseconds(1000);
    digitalWrite(foto, HIGH);
    digitalWrite(enable, LOW);
    short valor_bit;
    for(x=0;x < 8 ; x++)
      {
        valor_bit=digitalRead(datos);
        Serial.println(valor_bit);
        delay(500);
        digitalWrite(reloj, HIGH);
        delayMicroseconds(1000);
        digitalWrite(reloj, LOW);
      }
      return;
  }
    
    
void loop()
{
  if(digitalRead(7)==LOW)
   {
     
    lee1registro();
    Serial.println("------------------------------------------------");
    delay(250);    
   }
  
  
//    for(x=2;x<=12;x++)
//      {
//       
//            if(digitalRead(x)==1) bitClear(botones, (x-2));
//              else bitSet(botones, (x-2));
//         
//      }
//   
//   if(botones != botones_old)
//    {
//      botones_old=botones;
//      joySt.buttons=botones;
//      Joystick.setState(&joySt);
//    }  
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
