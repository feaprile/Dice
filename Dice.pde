void setup() {
  size(600, 422);
  noLoop();
}

void draw() { 
  int outputValue = 0;
  background(56, 130, 185);
  for (int y = 5; y < 372; y += 60) {
    for (int x = 5; x < 390; x += 60) {
      Die One = new Die(x, y);
      One.numberPips();
      One.show();
      outputValue += One.Pips;
    }
  }
  fill(0, 0, 0, 88);
  rect(427, 200, 160, 50, 16);
  fill(256, 256, 256);
  textSize(35);
  text("Total: " + outputValue, 434, 237);
}

void mousePressed() { 
  redraw();
}

class Die {
  int myX, myY, Pips;
  Die(int x, int y) {
    myX = x;
    myY = y;
  }
  void numberPips() { 
    Pips = (int)(Math.random() * 6) + 1;
  }
  void show() {
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
