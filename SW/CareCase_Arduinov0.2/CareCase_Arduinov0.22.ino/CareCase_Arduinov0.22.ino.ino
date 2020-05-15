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

#define EVER (;;)

//initialize the liquid crystal library
//the first parameter is the I2C address
//the second parameter is how many rows are on your screen
//the third parameter is how many columns are on your screen
LiquidCrystal_I2C lcd(0x27, 16, 2);

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

bool measure(int portnr, int l, int h)
{
  int x;
  x = 0;
  selectPort(portnr);
  delay(100);

  for(int i = 0;i < 10; i++)
  {
    x = x+analogRead(A0);
    Serial.print(x);
    Serial.print(" ");
    delay(50);
  }
  x = x / 10;
  Serial.print("\n");
  delay(100);
  Serial.print(portnr);
  Serial.print("=");
  Serial.print(x);
  Serial.print("\n");
  if (x < l)
  {
    return false;
  }
  if (x > h)
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

//____________________________________________________________________________________________________________________________

void pec(int x)
{
  char txt[18];                     //aray consisting of 18 charecters called txt
  sprintf(txt, "ERROR CODE %d", x); //
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

void sound(int y)
{
//  digitalWrite(8,HIGH);
  for(int i = 0 ; i < 40; i++)
  {
    digitalWrite(7, HIGH);
    delay(y);
    digitalWrite(7, LOW);
    delay(y);
  }
 // digitalWrite(8,LOW);
}

//____________________________________________________________________________________________________________________________

void waitbutton()
{
  // for (int i = 0; i <= 100; i++)
  for EVER
  {
    if ((digitalRead(17) == HIGH))
    {
      delay(20);
      while ((digitalRead(17) == HIGH))
        ;
      return;
    }
  }
}

//____________________________________________________________________________________________________________________________

void setup()
{
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(7,OUTPUT);
  
  digitalWrite(8,HIGH);
  
  Serial.begin(9600);

  lcd.init(); //initialize lcd screen
  lcd.clear();
  lcd.backlight(); // turn on the backlight

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

//____________________________________________________________________________________________________________________________



void loop()
{

  int errorCode = 0;

  lcd.clear();

  lcd.setCursor(0, 0); // tell the screen to write on the top row
  lcd.print("  INSERT PCB");
  lcd.setCursor(0, 1); // tell the screen to write on the bottom row
  lcd.print("AND PRESS START");
  delay(100);
 
  waitbutton();
  digitalWrite(6, HIGH);
  delay(512);               // wait 0,5sec
  lcd.clear();              // clear lcd
  delay(10);                // wait 0,01 sec
  lcd.print("    TESTING"); // Print Testing on LCD 
  delay(100);        // ...for 0,1 sec

  

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

  digitalWrite(6, LOW);

  //____________________________________________________________________________________________________________________________

  digitalWrite(9, HIGH);
  delay(200);

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
  delay(1);
  sound(1);
  delay(32);
  sound(1);
  delay(32);
  sound(1);
  digitalWrite(9, LOW);

//____________________________________________________________________________________________________________________________


  pec(errorCode);

  waitbutton();

  lcd.setCursor(0, 1);
  lcd.clear();
  delay(100);
  lcd.setCursor(1, 1);
  delay(100);
  lcd.clear();
}
