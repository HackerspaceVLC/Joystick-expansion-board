// HARDWARE CONNECTIONS
// Connect the following pins between your Arduino and the 74HC165 Breakout Board
// Connect pins A-H to 5V or GND or switches or whatever
const int data_pin = 11; // Connect Pin 11 to SER_OUT (serial data out)
const int shld_pin = 8; // Connect Pin 8 to SH/!LD (shift or active low load)
const int clk_pin = 12; // Connect Pin 12 to CLK (the clock that times the shifting)
const int ce_pin = 9; // Connect Pin 9 to !CE (clock enable, active low)

JoyState_t joySt;

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
};

struct game_control_st gc_data,gc_data_old;
byte j_new,j_old;

// The part that runs once
void setup() 
{                
  // Initialize serial to gain the power to obtain relevant information, 9600 baud
//  Serial.begin(9600);

  // Initialize each digital pin to either output or input
  // We are commanding the shift register with each pin with the exception of the serial
  // data we get back on the data_pin line.
  pinMode(shld_pin, OUTPUT);
  pinMode(ce_pin, OUTPUT);
  pinMode(clk_pin, OUTPUT);
  pinMode(data_pin, INPUT);

  // Required initial states of these two pins according to the datasheet timing diagram
  digitalWrite(clk_pin, HIGH);
  digitalWrite(shld_pin, HIGH);

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
  gc_data.buttons.botones = gc_data_old.buttons.botones = gc_data.joys.mandos = gc_data_old.joys.mandos = 0;
}

// The part that runs to infinity and beyond
void loop() {
  read_shift_regs(&gc_data); // Read the shift register, it likes that
  if ( gc_data.buttons.botones != gc_data_old.buttons.botones ) {
    gc_data_old.buttons = gc_data.buttons;
    joySt.buttons=gc_data.buttons.botones;
    Joystick.setState(&joySt);
//    Serial.println("Datos botones: ");
//    print_byte(gc_data.buttons.botones_byte[0]);
//    print_byte(gc_data.buttons.botones_byte[1]);
//    print_byte(gc_data.buttons.botones_byte[2]);
//    print_byte(gc_data.buttons.botones_byte[3]);
//    Serial.print(gc_data.buttons.botones);
//    Serial.println("****************");
  }
  if ( gc_data.joys.mandos != gc_data_old.joys.mandos ) {
    j_new = gc_data.joys.mandos_byte[0];
    //joy0
    joySt.yAxis = ((j_new&0xc0) == 0x40)?255:((j_new&0xc0) == 0x80)?0:127;
    joySt.xAxis = ((j_new&0x30) == 0x10)?255:((j_new&0x30) == 0x20)?0:127;
    //joy1
    joySt.zAxis    = ((j_new&0xc) == 0x4)?255:((j_new&0xc) == 0x8)?0:127;
    joySt.xRotAxis = ((j_new&0x3) == 0x1)?255:((j_new&0x3) == 0x2)?0:127;
    j_new = gc_data.joys.mandos_byte[1];
    //joy2
//    joySt.yRotAxis = ((j_new&0xc0) == 0x40)?255:((j_new&0xc0) == 0x80)?0:127;
//    joySt.zRotAxis = ((j_new&0x30) == 0x10)?255:((j_new&0x30) == 0x20)?0:127; //este es el que no va Ivan!!!
    if((j_new&0xc0) == 0x40) {
      if ((j_new&0x30) == 0x10) {
        joySt.hatSw1 = 3;
      } else if ((j_new&0x30) == 0x20) {
        joySt.hatSw1 = 5;
      } else
        joySt.hatSw1 = 4;
    } else if ((j_new&0xc0) == 0x80) {
      if ((j_new&0x30) == 0x10) {
        joySt.hatSw1 = 1;
      } else if ((j_new&0x30) == 0x20) {
        joySt.hatSw1 = 7;
      } else
        joySt.hatSw1 = 0;
    } else if ((j_new&0x30) == 0x10) {
      joySt.hatSw1 = 2;
    } else if ((j_new&0x30) == 0x20) {
      joySt.hatSw1 = 6;
    } else joySt.hatSw1 = 9;
    joySt.hatSw2 = 9;
    //joy3
    joySt.rudder = ((j_new&0xc) == 0x4)?255:((j_new&0xc) == 0x8)?0:127;
    joySt.throttle = ((j_new&0x3) == 0x1)?255:((j_new&0x3) == 0x2)?0:127;

    Joystick.setState(&joySt);
    gc_data_old.joys = gc_data.joys;
//    Serial.println("Datos mandos: ");
//    print_byte(gc_data.joys.mandos_byte[0]);
//    print_byte(gc_data.joys.mandos_byte[1]);
//    Serial.println("****************");
  }

  //delay(50);
}

// This code is intended to trigger the shift register to grab values from it's A-H inputs
void read_shift_regs(struct game_control_st *gc)
{
  digitalWrite(shld_pin, LOW);
  delayMicroseconds(5); // Requires a delay here according to the datasheet timing diagram
  digitalWrite(shld_pin, HIGH);
  delayMicroseconds(5);
  
  // Required initial states of these two pins according to the datasheet timing diagram
  pinMode(clk_pin, OUTPUT);
  pinMode(data_pin, INPUT);
  digitalWrite(clk_pin, HIGH);
  digitalWrite(ce_pin, LOW); // Enable the clock

  //botones
  gc->buttons.botones_byte[0] = ~shiftIn(data_pin, clk_pin, MSBFIRST);
  gc->buttons.botones_byte[1] = ~shiftIn(data_pin, clk_pin, MSBFIRST);
  gc->buttons.botones_byte[2] = ~shiftIn(data_pin, clk_pin, MSBFIRST);
  gc->buttons.botones_byte[3] = ~shiftIn(data_pin, clk_pin, MSBFIRST);
  //mandos
  gc->joys.mandos_byte[0] = ~shiftIn(data_pin, clk_pin, LSBFIRST);
  gc->joys.mandos_byte[1] = ~shiftIn(data_pin, clk_pin, LSBFIRST);

  digitalWrite(ce_pin, HIGH); // Disable the clock
}

// A function that prints all the 1's and 0's of a byte, so 8 bits +or- 2
void print_byte(byte val)
{
    byte i;
    for(byte i=0; i<=7; i++)
    {
      Serial.print(val >> i & 1, BIN); // Magic bit shift, if you care look up the <<, >>, and & operators
    }
    Serial.print("\n"); // Go to the next line, do not collect $200
}

