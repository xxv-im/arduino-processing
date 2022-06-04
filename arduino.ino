boolean state = false;
void setup() {

  pinMode(8, OUTPUT);   //Set pin as an output
  Serial.begin(9600);   //Start serial communication @9600 bps

}

void loop() {

  if (Serial.available()) {

    char val = Serial.read();

    if (val == 't') {    
      if (state == false) {
        state = true;
        digitalWrite(8, HIGH); 
      } else {
        state = false;
        digitalWrite(8, LOW ); 
      }
    }

  }
}
