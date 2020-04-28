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




bool messure(int portnr, int l, int h)
{
  int x;
  selectPort(portnr);
  delay(100);
  x = analogRead(A0);
  Serial.print(x); 
  Serial.print("\n");
  if(x < l)
  {
   return false;
  }  
  if(x > h)
  {
   return false;  
    
    }
   return true;
}

/*      
 *      12V= if(messure(x,647,703))
 *       5V= if(messure(x,607,743))
 *     4.5V= if(messure(x,600,750))
 *     3.7V= if(messure(x,587,766))
 *     3.3V= if(messure(x,573,777))
 *     
 *     3V-4.5V= if(messure(x,444,666))
 */


void pec(int x)
{
  char txt[18];                               //aray consisting of 18 charecters called txt
  sprintf(txt,"ERROR CODE %d",x);             //
  lcd.clear();
  lcd.print(txt);
  lcd.setCursor(0,1);

  switch(x)
  {
    case 0: lcd.print("OK"); break;
    case 1: lcd.print("3v3 LDO"); break;
    case 2: lcd.print("4v5 LDO GSM ONLY"); break;
    case 3: lcd.print("DEFECTIVE FUSE"); break;
    case 4: lcd.print("12V POWER MUX"); break;
    case 5: lcd.print("12V POWER ON/OFF"); break;
    case 6: lcd.print("5V POWER MUX"); break;
    case 7: lcd.print("5V POWER BUCK"); break;
    case 8: lcd.print("5V POWER MUX"); break;
    case 9: lcd.print("5V BOOST SUPPLY"); break;
    case 10: lcd.print("12V POWER MUX"); break;
    case 11: lcd.print("12V BOOST CIRC."); break;
    case 12: lcd.print("BATT ON/OFF CTR"); break;
  }
}
/*
void pec(int x)
{
  char txt[18];                               //aray consisting of 18 charecters called txt
  sprintf(txt,"ERROR CODE %d",x);             //
  lcd.clear();
  lcd.print(txt);
  lcd.setCursor(0,1);

  switch(x)
  {
    case 0: Serial.print("OK"); break;
    case 1: Serial.print("3v3 LDO"); break;
    case 2: Serial.print("4v5 LDO GSM ONLY"); break;
    case 3: Serial.print("DEFECTIVE FUSE"); break;
    case 4: Serial.print("12V POWER MUX"); break;
    case 5: Serial.print("12V POWER ON/OFF"); break;
    case 6: Serial.print("5V POWER MUX"); break;
    case 7: Serial.print("5V POWER BUCK"); break;
    case 8: Serial.print("5V POWER MUX"); break;
    case 9: Serial.print("5V BOOST SUPPLY"); break;
    case 10: Serial.print("12V POWER MUX"); break;
    case 11: Serial.print("12V BOOST CIRC."); break;
    case 12: Serial.print("BATT ON/OFF CTR"); break;
  }
}
*/



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
     
                                         
       if(messure(9,647,703))                                             
   //  if(messure(9,512,512))
        {
                                                        
                         if(messure(6,607,743))
                     //  if(messure(6,512,512))
                          {
                                                       
                                     if(!messure(11,573,777)) //Husk ! før messure
                                     //  if(messure(11,512,512)) 
                                      {
                                      pec(1);
                                      Serial.print("FEJL-1");
                                      Serial.print("\n");
                                      waitbutton();
           
                                      
                                    }else if(!messure(10,550,766))
                                //      }else if(messure(10,512,512)) 
                                      {
                                      pec(2);
                                      Serial.print("FEJL-2");
                                      Serial.print("\n");
                                      waitbutton();
                                      } //ENDIF







            
                      }else if(messure(2,607,743))
                    //     }else if(messure(2,512,512))
                        {
                        pec(6);
                        Serial.print("Fejl-6");
                        Serial.print("\n");
                        waitbutton();
                
              
                        }else
                        {
                        pec(7);
                        Serial.print("Fejl-7");
                        Serial.print("\n");
                        waitbutton();
                
                        } //ENDIF
     
           
       
      }else
        {
                      if(messure(8,647,703))
                  //       if(messure(8,0,512))

                        {
                        pec(3);
                        Serial.print("Fejl-3");
                        Serial.print("\n");
                        waitbutton(); 
                        }
                      else if(messure(1,647,703))
                 //        else if(messure(1,512,512))
                        {
                        pec(4);
                        Serial.print("Fejl-4");
                        Serial.print("\n");
                        waitbutton(); 
                        }
                      else if(messure(0,647,703))
                  //       else if(messure(0,512,512))
                        {
                        pec(5);
                        Serial.print("Fejl-5");
                        Serial.print("\n");
                        waitbutton(); 
                        } //ENDIF
        } //ENDIF
              delay(200);

       digitalWrite(6,LOW);
        
 //____________________________________________________________________________________________________________________________    
     

       digitalWrite(9,HIGH);
       delay(3000);   

          if(messure(9,647,703))                                             
     //          if(messure(9,512,512)) 
              {
                             if(!messure(6,607,743))
                      //           if(messure(6,512,512))
                                {
                                           if(messure(5,607,743))
                                      //         if(messure(5,512,512)) 
                                              {
                                              pec(8);
                                              Serial.print("FEJL-8");
                                              Serial.print("\n");
                                              waitbutton();

                                              }
                                              else
                                              {
                                              pec(9);
                                              Serial.print("FEJL-9");
                                              Serial.print("\n");
                                              waitbutton();
                                              } //ENDIF
                                 }//ENDIF
              }else
              {
                
              if(messure(7,647,707))                                             
                // if(messure(7,512,512))
                {
                pec(10);
                Serial.print("Fejl-10");
                Serial.print("\n");
                waitbutton(); 
                }   
         
           else if(messure(4,444,777))
      //           else if(messure(4,512,512))
                {
                pec(11);
                Serial.print("Fejl-11");
                Serial.print("\n");
                waitbutton(); 
                }
                 
                else
                {
                pec(12);
                Serial.print("Fejl-12");
                Serial.print("\n");
                waitbutton(); 
                }//ENDIF

              }//ENDIF 
      delay(200);
    digitalWrite(9,LOW);
/*          
            
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
