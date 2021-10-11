void setup() {
  size(800, 600);
  noLoop();
}

void draw() { //Draws the dice repeatedly with a loop, and sets up the show and numberPips functions (parts of the things the dice do, show up, and show up with a certain amount of Pips)
  int outputValue = 0;
  background(56, 130, 185);
  for (int y = 5; y < 582; y += 60) {
    for (int x = 5; x < 580; x += 60) {
      Die One = new Die(x, y);
      One.numberPips();
      One.show();
      outputValue += One.Pips;
    }
  }// this part is to draw the text
  fill(0, 0, 0, 88);
  rect(612, 263, 160, 50, 16);
  fill(256, 256, 256);
  textSize(35);
  text("Total: " + outputValue, 620, 300);
}

void mousePressed() { //this is to program when the draw function happens
  redraw();
}

class Die //this is the class that we are using
{
  int myX, myY, Pips; //This line and up to the
  //void numberPips line = constructor
  Die(int x, int y) {
    myX = x;
    myY = y;
  }
  void numberPips() { //Just the roll() function, chooses how many pips to show, at random
    Pips = (int)(Math.random() * 6) + 1;
  }
  void show() {// second action of the dice, which is to make the pips show up on them, and based on amount of pips chosen above, the placement of them changes 
    fill(0, 0, 0);
    rect(myX, myY, 50, 50, 10);
    fill(256, 256, 256);
    if (Pips == 1) {
      ellipse(myX + 25, myY + 25, 7, 7);
    } else if (Pips == 2) {
      ellipse(myX + 15, myY + 15, 7, 7);
      ellipse(myX + 35, myY + 35, 7, 7);
    } else if (Pips == 3) {
      ellipse(myX + 12, myY + 37, 7, 7);
      ellipse(myX + 25, myY + 25, 7, 7);
      ellipse(myX + 37, myY + 12, 7, 7);
    } else if (Pips == 4) {
      ellipse(myX + 15, myY + 15, 7, 7);
      ellipse(myX + 15, myY + 35, 7, 7);
      ellipse(myX + 35, myY + 15, 7, 7);
      ellipse(myX + 35, myY + 35, 7, 7);
    } else if (Pips == 5) {
      ellipse(myX + 12, myY + 12, 7, 7);
      ellipse(myX + 12, myY + 37, 7, 7);
      ellipse(myX + 37, myY + 12, 7, 7);
      ellipse(myX + 37, myY + 37, 7, 7);
      ellipse(myX + 25, myY + 25, 7, 7);
    } else {
      ellipse(myX + 12, myY + 12, 7, 7);
      ellipse(myX + 12, myY + 37, 7, 7);
      ellipse(myX + 37, myY + 12, 7, 7);
      ellipse(myX + 37, myY + 37, 7, 7);
      ellipse(myX + 12, myY + 25, 7, 7);
      ellipse(myX + 37, myY + 25, 7, 7);
    }
  }
}
