/*
Arduino Leonardo Joystick!

*/
const int data_pin = 11; // Connect Pin 11 to SER_OUT (serial data out)
const int shld_pin = 8; // Connect Pin 8 to SH/!LD (shift or active low load)
const int clk_pin = 12; // Connect Pin 12 to CLK (the clock that times the shifting)
const int ce_pin = 9; // Connect Pin 9 to !CE (clock enable, active low)


long botones_old;

JoyState_t joySt;

void setup()
{
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for Leonardo only
  }

	joySt.xAxis = 128;
	joySt.yAxis = 128;
	joySt.zAxis = 128;
	joySt.xRotAxis = 128;
	joySt.yRotAxis = 128;
	joySt.zRotAxis = 128; //este es el que no va Ivan!!!
	joySt.throttle = 128;
	joySt.rudder = 128;
	joySt.hatSw1 = 9;
	joySt.hatSw2 = 9;
	joySt.buttons = 0;
        //botones=0;
        botones_old=0;  

}

union buttons_u {
   long botones;
   byte botones_byte[sizeof(long)];     // Array de bytes de tamaño igual al tamaño de la primera variable
};
union mandos_u {
  int mandos;
  byte mandos_byte[sizeof(int)];
};
struct game_control_st {
  mandos_u joys;      //4bit mando, 4 mandos
  buttons_u buttons;  //32 botones
} gc;
//struct game_control_st gc;

void print_byte(byte val)
{
    byte i;
    for(byte i=0; i<=7; i++)
    {
      Serial.print(val >> i & 1, BIN); // Magic bit shift, if you care look up the <<, >>, and & operators
    }
    Serial.print("\n"); // Go to the next line, do not collect $200
}


void read_game_control (struct game_control_st *gcontrol, int joys, int buttons) {
  byte aux;
  // Trigger loading the state of the A-H data lines into the shift register
  digitalWrite(shld_pin, LOW);
  delayMicroseconds(5); // Requires a delay here according to the datasheet timing diagram
  digitalWrite(shld_pin, HIGH);
  delayMicroseconds(5);
  
  // Required initial states of these two pins according to the datasheet timing diagram
  pinMode(clk_pin, OUTPUT);
  pinMode(data_pin, INPUT);
  digitalWrite(clk_pin, HIGH);
  digitalWrite(ce_pin, LOW); // Enable the clock
  
  //Lee los botones 1bit/botón
  for(aux=0;aux<buttons;aux+=8) {
    gcontrol->buttons.botones_byte[aux/8] = shiftIn(data_pin, clk_pin, MSBFIRST);
    Serial.print("aux:");
    Serial.print(aux);
    Serial.print(" :: aux/8:");
    Serial.print(aux/8);
    Serial.print("  ::  botones_byte:");
    print_byte(gcontrol->buttons.botones_byte[aux/8]);
  }
  Serial.print("botones: ");
  Serial.println(gcontrol->buttons.botones);
  //Lee los mandos 4bits/mando
  for(aux=0;aux<joys;aux+=2) {
    gcontrol->joys.mandos_byte[aux/2] = ~shiftIn(data_pin, clk_pin, MSBFIRST);
  }
  
  digitalWrite(ce_pin, HIGH); // Disable the clock
}

int get_axis(int id_mando,long buttons) {
  
}
int get_hat(int id_mando, long buttons) {
  /* 9:Centro
     0:N  1:NE  2:E  3:SE
     4:S  5:SO  6:O  7:NO
  */
  int ret=9;
//  swich(
}

void set_joy(JoyState_t joy, long buttons ) {
  
}


void loop()
{

  read_game_control (&gc, 4, 32);
  if( gc.buttons.botones != botones_old) {
    botones_old=gc.buttons.botones;
    joySt.buttons=gc.buttons.botones;
    Joystick.setState(&joySt);
  }  
//      botones= random(511);     
//      Serial.println(botones);
      Serial.println(gc.buttons.botones);
      delay(5000);
          

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
