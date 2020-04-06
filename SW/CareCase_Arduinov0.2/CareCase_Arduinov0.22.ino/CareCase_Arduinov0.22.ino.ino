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
    digitalWrite(6,HIGH);
    delay(512);             // wait 0,1sec
    lcd.clear();              // clear lcd
    delay(10);              // wait 1 sec
    lcd.print("    TESTING");     // Print Testing on LCD
    delay(512);              // wait 1 sec
    
  
  selectPort(9);                                        //Read TP23 (Needs to be 12V made to be about 3.3v)
    if((analogRead(A0) > 512)) 
   {
    selectPort(6);                                      //Read TP22 (Needs to be 5V made to be about 3.3v)
      if((analogRead(A0) > 512))
        {
      selectPort(11);                                   //Read TP20 (Needs to be 3,3V made to be about 3.27v)
        if((analogRead(A0) > 512)) 
          {
            lcd.clear();
            lcd.print("Error Code 1");
            lcd.setCursor(0,1);
            lcd.print("3v3 LDO ");
            Serial.print("FEJL-1");
            Serial.print("\n");
            waitbutton();
           
           }
            if((analogRead(A0) > 512)) 
            {
            lcd.clear();
            lcd.print("Error Code 1");
            lcd.setCursor(0,1);
            lcd.print("3v3 LDO ");
            Serial.print("FEJL-1");
            Serial.print("\n");
            waitbutton();
            
            }else(selectPort(2));
           
            if((analogRead(A0) > 512))
              {
                lcd.clear();               
                lcd.print("Error Code 6");
                lcd.setCursor(0,1);
                lcd.print("5V POWER MUX");
                Serial.print("Fejl-6");
                Serial.print("\n");
                waitbutton();
                
              }
              if((analogRead(A0) > 512))
              {
                lcd.clear();               
                lcd.print("Error Code 7");
                lcd.setCursor(0,1);
                lcd.print("5V POWER BUCK");
                Serial.print("Fejl-7");
                Serial.print("\n");
                waitbutton();
                
              }
             
             
     
           }
        
        }
        else
        {
          selectPort(8);
          if((analogRead(A0) > 512))
         {
            lcd.clear();               
            lcd.print("Error Code 3");
            lcd.setCursor(0,1);
            lcd.print("DEFECTIVE FUSE");
            Serial.print("Fejl-3");
            Serial.print("\n");
            waitbutton(); 
         }
          selectPort(1);       
          if((analogRead(A0) > 512))
          {
            lcd.clear();               
            lcd.print("Error Code 4");
            lcd.setCursor(0,1);
            lcd.print("12V POWER MUX");
            Serial.print("Fejl-4");
            Serial.print("\n");
            waitbutton(); 
          }
          selectPort(0);       
          if((analogRead(A0) > 512))
          {
            lcd.clear();               
            lcd.print("Error Code 5");
            lcd.setCursor(0,1);
            lcd.print("12V POWER ON/OFF");
            Serial.print("Fejl-5");
            Serial.print("\n");
            waitbutton(); 
          }
        }
       digitalWrite(6,LOW);
        
 //____________________________________________________________________________________________________________________________    
     
      

   selectPort(9);                                        //Read TP23 (Needs to be 12V made to be about 3.3v)
    if((analogRead(A0) > 512)) 
   {
    selectPort(6);                                      //Read TP22 (Needs to be 5V made to be about 3.3v)
      if((analogRead(A0) > 512))
        {
      selectPort(5);                                   //Read TP19 (Needs to be 4.5V made to be about 3.3v)
        if((analogRead(A0) > 512)) 
          {
          lcd.clear();
          lcd.print("Error Code 10");
          lcd.setCursor(0,1);
          lcd.print("5V POWER MUX");
          Serial.print("FEJL-10");
          Serial.print("\n");
          waitbutton();

          }else;
          lcd.clear();
          lcd.print("Error Code 11");
          lcd.setCursor(0,1);
          lcd.print("5V BOOST SUPPLY");
          Serial.print("FEJL-11");
          Serial.print("\n");
          waitbutton();
        }
   }      
          
            
             if((analogRead(A0) > 512)) 
              {
              lcd.clear();
              lcd.print("Error Code 1");
              lcd.setCursor(0,1);
              lcd.print("3v3 LDO ");
              Serial.print("FEJL-1");
              Serial.print("\n");
              waitbutton();
            
              }else(selectPort(2));
           
                  if((analogRead(A0) > 512))
                    {
                    lcd.clear();               
                    lcd.print("Error Code 6");
                    lcd.setCursor(0,1);
                    lcd.print("5V POWER MUX");
                    Serial.print("Fejl-6");
                    Serial.print("\n");
                    waitbutton();
                
                      }
                      if((analogRead(A0) > 512))
                        {
                        lcd.clear();               
                        lcd.print("Error Code 7");
                        lcd.setCursor(0,1);
                        lcd.print("5V POWER BUCK");
                        Serial.print("Fejl-7");
                        Serial.print("\n");
                        waitbutton();
                       }
       
   
          
/*

  selectPort(9);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-0   P9 TP16\n");
     Serial.print("FEJL-0   P9 TP16");
     Serial.print("\n");
     waitbutton();
     
      }
      
  selectPort(6);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-1   P8 TP8");
     Serial.print("FEJL-1   P8 TP8");
     Serial.print("\n");
     waitbutton();
     
      }

  selectPort(10);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-2   P7 TP21");
     Serial.print("FEJL-2   P7 TP21");
     Serial.print("\n");
     waitbutton();
     
      }
 selectPort(3);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-3   P6 TP27");
     Serial.print("FEJL-3   P6 TP27");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(4);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-4   P5 TP13");
     Serial.print("FEJL-4   P5 TP13");
     Serial.print("\n");
     waitbutton();
     
      }

  selectPort(5);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-5   P4 TP19");
     Serial.print("FEJL-5   P4 TP19");
     Serial.print("\n");
     waitbutton();
     
      }
  
  selectPort(7);
    if((analogRead(A0) < 512))
   {
     lcd.clear();
     lcd.print("FEJL-7   P2 TP14");
     Serial.print("FEJL-7   P2 TP14");
     Serial.print("\n");
     waitbutton();
     
      }
   selectPort(8);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("FEJL-8   P23 TP14");
     Serial.print("FEJL-8   P23 TP14");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(9);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("FEJL-9   P22 TP23");
     Serial.print("FEJL-9   P22 TP23");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(10);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("FEJL-10   P21 TP17");
     Serial.print("FEJL-10   P21 TP17");
     Serial.print("\n");
     waitbutton();
     
      }
  selectPort(11);
    if((analogRead(A0) > 1023))
   {
     lcd.clear();
     lcd.print("FEJL-11   P20 TP20");
     Serial.print("FEJL-11   P20 TP20");
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
