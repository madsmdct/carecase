//  __________________
// | CARE_CASE_TESTER |
// | MDCT, 31-01-2020 |
// |__________________|

// Including libraries

#include <LiquidCrystal_I2C.h>
#include <Wire.h>

int D2;
int D3;
int D4;
int D5;


//initialize the liquid crystal library
//the first parameter is the I2C address
//the second parameter is how many rows are on your screen
//the third parameter is how many columns are on your screen
LiquidCrystal_I2C lcd(0x27, 16, 2);

void selectPort(int portNo)

{
  Serial.print("[");
  if(portNo & 0x08)      //4067 Port A
  {
    digitalWrite(5,HIGH);
    Serial.print(digitalRead(5));
  }
  else
  {
    digitalWrite(5,LOW);
    Serial.print(digitalRead(5));
  }

  if(portNo & 0x04)           //4067 Port B
  {
    digitalWrite(4,HIGH);
    Serial.print(digitalRead(4));
  }
  else
  {
    digitalWrite(4,LOW);
    Serial.print(digitalRead(4));
  }

  if(portNo & 0x02)     //4067 Port C
  {
    digitalWrite(3,HIGH);
    Serial.print(digitalRead(3));
  }
  else
  {
    digitalWrite(3,LOW);
    Serial.print(digitalRead(3));
  }

  if(portNo & 0x01)           //4067 Port D
  {
    digitalWrite(2,HIGH);
    Serial.print(digitalRead(2)); 
  }
  else
  {
    digitalWrite(2,LOW);
    Serial.print(digitalRead(2)); 
  }

  Serial.print("]\n");
}

void waitbutton()
{
        // for (int i = 0; i <= 50; i++)
        for (;;) 
      {
      if((digitalRead(17) == HIGH))
      {
        delay(20);
        while((digitalRead(17) == HIGH));
        return;
        }
      }
  }


void setup() {

  Serial.begin(9600);
  
  lcd.init();            //initialize lcd screen
  lcd.clear();
  lcd.backlight();       // turn on the backlight

  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(17, INPUT);


  D2 = digitalRead(2);
  D3 = digitalRead(3);
  D4 = digitalRead(4);
  D5 = digitalRead(5);
  
  pinMode(A0, INPUT);
  
}

void loop() {

  lcd.clear();

  lcd.setCursor(0,0);    // tell the screen to write on the top row
  lcd.print("  INSERT PCB");
  lcd.setCursor(0,1);    // tell the screen to write on the bottom row
  lcd.print("AND PRESS START");
  delay(100);

  

    waitbutton();
    delay(512);             // wait 0,1sec
    lcd.clear();              // clear lcd
    delay(10);              // wait 1 sec
    lcd.print("    TESTING");     // Print Testing on LCD
    delay(512);              // wait 1 sec

    
  
  selectPort(0);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-0");
     Serial.print("FEJLKODE-0");
     Serial.print("\n");
     waitbutton();
     
      }
      
  selectPort(5);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-5");
     Serial.print("FEJLKODE-5");
     Serial.print("\n");
     waitbutton();
     
      }

  selectPort(6);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-6");
     Serial.print("FEJLKODE-6");
     Serial.print("\n");
     waitbutton();
     
      }

 selectPort(7);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-7");
     Serial.print("FEJLKODE-7");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(8);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-8");
     Serial.print("FEJLKODE-8");
     Serial.print("\n");
     waitbutton();
     
      }

  selectPort(9);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-9");
     Serial.print("FEJLKODE-9");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(10);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-10");
     Serial.print("FEJLKODE-10");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(15);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-15");
     Serial.print("FEJLKODE-15");
     Serial.print("\n");
     waitbutton();
     
      }
  /* selectPort(8);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-8");
     Serial.print("FEJLKODE-8");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(9);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-9");
     Serial.print("FEJLKODE-9");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(10);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-10");
     Serial.print("FEJLKODE-10");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(11);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("   FEJLKODE-11");
     Serial.print("FEJLKODE-11");
     Serial.print("\n");
     waitbutton();
     
    }
   */   
    
      lcd.setCursor(0,1);
      lcd.clear();
      delay(255);
      lcd.setCursor(1,1);
      delay(255);
      lcd.clear();

      if((analogRead(A0) > 512))
      {
      lcd.print("       OK");
      waitbutton();
      }
      

  

}
