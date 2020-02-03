//  __________________
// | CARE_CASE_TESTER |
// | MDCT, 31-01-2020 |
// |__________________|

// Including libraries

#include <LiquidCrystal_I2C.h>
#include <Wire.h>


//initialize the liquid crystal library
//the first parameter is the I2C address
//the second parameter is how many rows are on your screen
//the third parameter is how many columns are on your screen
LiquidCrystal_I2C lcd(0x27, 16, 2);

void setup() {
  
  lcd.init();            //initialize lcd screen
  lcd.clear();
  lcd.backlight();       // turn on the backlight
  
}

void loop() {
  pinMode(8, INPUT);


  lcd.setCursor(0,0);    // tell the screen to write on the top row
  lcd.print("INSERT PCB");
  lcd.setCursor(0,1);    // tell the screen to write on the bottom row
  lcd.print("AND PRESS START");
  delay(1000);
  lcd.setCursor(0,0);
  
  // lcd.print(analogRead(A3));
  
  if((analogRead(A3) >512))
  {  delay(1000);           //wait for a second (1000 m/s)
    lcd.clear();
    delay(1000);
    lcd.print("TESTING");
    delay(1000);
  }
}
