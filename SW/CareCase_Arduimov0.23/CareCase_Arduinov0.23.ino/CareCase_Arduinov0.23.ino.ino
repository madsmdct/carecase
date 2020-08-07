//  __________________
// | CARE_CASE_TESTER |
// | MDCT, 07-08-2020 |
// |__________________|

// Including libraries

#include <LiquidCrystal_I2C.h>
#include <Wire.h>

int D2;
int D3;
int D4;
int D5;

#define EVER (;;)

//initialize the liquid crystal library
//the first parameter is the I2C address
//the second parameter is how many rows are on your screen
//the third parameter is how many columns are on your screen
LiquidCrystal_I2C lcd(0x3F, 16, 2); //If I2C board is swaped and display shows "SQUARES" try changing adress to 0x27 instaid of 0x3F

//____________________________________________________________________________________________________________________________

void selectPort(int portNo)

{
  Serial.print("[");                 
  if (portNo & 0x08) //4067 Port A    
  {
    digitalWrite(5, HIGH);
    Serial.print("1");
  }
  else
  {
    digitalWrite(5, LOW);
    Serial.print("0");
  }

  if (portNo & 0x04) //4067 Port B
  {
    digitalWrite(4, HIGH);
    Serial.print("1");
  }
  else
  {
    digitalWrite(4, LOW);
    Serial.print("0");
  }

  if (portNo & 0x02) //4067 Port C
  {
    digitalWrite(3, HIGH);
    Serial.print("1");
  }
  else
  {
    digitalWrite(3, LOW);
    Serial.print("0");
  }

  if (portNo & 0x01) //4067 Port D
  {
    digitalWrite(2, HIGH);
    Serial.print("1");
  }
  else
  {
    digitalWrite(2, LOW);
    Serial.print("0");
  }

  Serial.print("]\n");
}

//____________________________________________________________________________________________________________________________

bool measure(int portnr, int l, int h)  // Portnr = value 0-15, l = low value(0 to 1023), h = high value(0 to 1032)
{
  int x;
  x = 0;
  selectPort(portnr);                   // Sellects port depending on what value portnr is set to be
  delay(100);                           // Wait 100ms

  for(int i = 0;i < 10; i++)            // Repeat as long as i is smaler than 10 (11 times)
  {
    x = x+analogRead(A0);               // Make x to be previous x + value of A0 (0 to 1023)
    Serial.print(x);                    // Print value of x to serial monitor (Used in debuging)
    Serial.print(" ");                  // Print a "space" to serial monitor
    delay(50);                          // Wait 50ms
  }
  x = x / 10;                           // Set x value to be previous x devided by 10
  Serial.print("\n");                   // Start new line in serial monitor
  delay(100);                           // Wait 100ms
  Serial.print(portnr);                 // Print selectet port number to serial monitor (Used in debugging)
  Serial.print("=");                    // Print "=" in serial monitor
  Serial.print(x);                      // Print value of x to serial monitor
  Serial.print("\n");                   // Start new line in serial monitor
  if (x < l)                            // If x is less than l (l = min value)
  {
    return false;                       // return false conclution
  }
  if (x > h)                            // If x is more than h (h = max value)
  {
    return false;                       // return false conclution
  }
  return true;                          // return true if value is higher than l and lower than h
}

/*      Values for debugging.
 *      Preset with voltage devider mounted
 *      
 *      12V= if(messure(x,647,703))
 *       5V= if(messure(x,607,743))
 *     4.5V= if(messure(x,600,750))
 *     3.7V= if(messure(x,587,766))
 *     3.3V= if(messure(x,573,777))
 *     
 *     3V-4.5V= if(messure(x,444,666))
 */

//____________________________________________________________________________________________________________________________

void pec(int x)                       // pec = short for: print error code
{
  char txt[18];                       //aray consisting of 18 charecters called txt
  sprintf(txt, "ERROR CODE %d", x);   //print error code to display with value and case number result
  lcd.clear();
  lcd.print(txt);
  lcd.setCursor(0, 1);

  switch (x)
  {
  case 0:
    lcd.print("OK");
    break;
  case 1:
    lcd.print("3v3 LDO");
    break;
  case 2:
    lcd.print("4v5 LDO GSM ONLY");
    break;
  case 3:
    lcd.print("DEFECTIVE FUSE");
    break;
  case 4:
    lcd.print("12V POWER MUX");
    break;
  case 5:
    lcd.print("12V POWER ON/OFF");
    break;
  case 6:
    lcd.print("5V POWER MUX");
    break;
  case 7:
    lcd.print("5V POWER BUCK");
    break;
  case 8:
    lcd.print("5V POWER MUX");
    break;
  case 9:
    lcd.print("5V BOOST SUPPLY");
    break;
  case 10:
    lcd.print("12V POWER MUX");
    break;
  case 11:
    lcd.print("12V BOOST CIRC.");
    break;
  case 12:
    lcd.print("BATT ON/OFF CTR");
    break;
  }
}
//____________________________________________________________________________________________________________________________

void sound(int y)                 // value y desides the tone that playes
{
//  digitalWrite(8,HIGH);
  for(int i = 0 ; i < 40; i++)    // repeat as long as i is smaler than 40 (41 times)
  {
    digitalWrite(7, HIGH);        // set port 7 HIGH (digital value 1)
    delay(y);                     // wait (y)ms
    digitalWrite(7, LOW);         // set port 7 LOW (digital value 0)
    delay(y);                     // wait (y)ms
  }
 // digitalWrite(8,LOW);
}

//____________________________________________________________________________________________________________________________

void waitbutton()                       // Wait for button to be pressed
{
  for EVER                              // continnues loop
  {
    if ((digitalRead(17) == HIGH))      // if port 17 is HIGH (digital value 1)
    {
      delay(20);                        // wait 20ms
      while ((digitalRead(17) == HIGH)) // is port 17 still HIGH (digital value 1)
        ;
      return;                           // end loop and return
    }
  }
}

//____________________________________________________________________________________________________________________________

void setup()
{
  pinMode(2, OUTPUT);    // make D2 an output
  pinMode(3, OUTPUT);    // make D3 an output
  pinMode(4, OUTPUT);    // make D4 an output
  pinMode(5, OUTPUT);    // make D5 an output
  pinMode(7, OUTPUT);    // make D7 an output
  
  digitalWrite(8,HIGH); // set D8 high (digital value 1)
  
  Serial.begin(19200);   // start serail communication and set communication speed in 'baud'

  lcd.init();           //initialize lcd screen
  lcd.clear();          // clear lcd screen
  lcd.backlight();      // turn on the backlight

  pinMode(17, INPUT);   // make D17 an input

  D2 = digitalRead(2);  
  D3 = digitalRead(3);
  D4 = digitalRead(4);
  D5 = digitalRead(5);

  pinMode(A0, INPUT);   // make A0 an input
}

//____________________________________________________________________________________________________________________________



void loop()
{

  int errorCode = 0;            // set errorcode value to 0

  lcd.clear();

  lcd.setCursor(0, 0);          // tell the screen to write on the top row
  lcd.print("  INSERT PCB");    // write on display "INSERT PCB"
  lcd.setCursor(0, 1);          // tell the screen to write on the bottom row
  lcd.print("AND PRESS START"); // Write on display "AND PRESS START"
  delay(100);                   // wait 100ms
 
  waitbutton();
  digitalWrite(6, HIGH);        // Pull relay 12V
  digitalWrite(13, HIGH);       // Enable 4,5V (3,7V)
  delay(512);                   // wait 512ms
  lcd.clear();                  // clear lcd
  delay(10);                    // wait 10ms
  lcd.print("    TESTING");     // Print Testing on LCD 
  delay(100);                   // wait 100ms

  

//____________________________________________________________________________________________________________________________


  if (measure(9, 647, 703))
  {

    if (measure(6, 607, 743))
    {

      if (!measure(11, 573, 777)) //Husk ! før measure
      {

        errorCode = 1;
      }
      else if (!measure(10, 550, 766))
      {
        errorCode = 2;
      } //ENDIF
    }
    else if (measure(2, 607, 743))
    {
      errorCode = 6;
    }
    else
    {
      errorCode = 7;
    } //ENDIF
  }
  else
  {
    if (measure(8, 647, 703))
    {
      errorCode = 3;
    }
    else if (measure(1, 647, 703))

    {
      errorCode = 4;
    }

    else if (measure(0, 647, 703))
    {
      errorCode = 5;
    } //ENDIF

  } //ENDIF
  delay(200);

  digitalWrite(6, LOW);       // Turn off relay 12V
  digitalWrite(13, LOW);      // Disable 4,5V (3,7V)
  
  //____________________________________________________________________________________________________________________________

  digitalWrite(9, HIGH);      // Turn on relay 5V
  delay(200);                 // wait 200ms

  if (measure(9, 647, 703))
  {
    if (!measure(6, 607, 743))
    {
      if (measure(5, 607, 743))
      {
        errorCode = 8;
      }
      else
      {
        errorCode = 9;
      } //ENDIF

    } //ENDIF
  }
  else
  {

    if (measure(7, 647, 707))

    {
      errorCode = 10;
    }

    else if (measure(4, 444, 777))

    {
      errorCode = 11;
    }

    else
    {
      errorCode = 12;
    } //ENDIF

  } //ENDIF
  delay(1);             // wait 1ms
  sound(1);             // play sound
  delay(32);            // wait 32ms
  sound(1);             // play sound
  delay(32);            // wait 32ms
  sound(1);             // play sound
  digitalWrite(9, LOW); // turn off relay 5V

//____________________________________________________________________________________________________________________________


  pec(errorCode);       // print error code

  waitbutton();         // wait for button to be pressed

  lcd.setCursor(0, 1);  // tell the screen to write on the bottom row
  lcd.clear();          // clear the top row of the display
  delay(100);           // wait 100ms
  lcd.setCursor(1, 1);  // tell the screen to write on the bottom row 2nd possition
  delay(100);           // wait 100ms
  lcd.clear();          // clear the bottom row of the display
}
