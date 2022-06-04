import controlP5.*; //import ControlP5 library
import processing.serial.*;

Serial port;

ControlP5 cp5; //create ControlP5 object

void setup(){ //Same as setup in arduino
  
  size(200, 200);                          //Window size, (width, height)
  
  port = new Serial(this, "/dev/cu.usbmodem14101", 9600);   //Change this to your port
  
  cp5 = new ControlP5(this);
  
  cp5.addButton("BUTTON")  //The button
     .setPosition(40, 70)  //x and y coordinates of upper left corner of button
     .setSize(120, 60)     //(width, height)
     .setColorBackground(color(0, 0, 0)) // button background
     .setColorForeground(color(255, 215, 225)) // button foreground
     .setColorActive(color(214, 237, 254)); // button active state
     
  ;     

}

void draw(){  //Same as loop in arduino

  background(255, 255, 255); //Background colour of window (r, g, b) or (0 to 255)
    
}

void BUTTON(){
  
  port.write('t');
  
}
