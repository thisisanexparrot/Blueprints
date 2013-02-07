class Door {
  Door() {
    strokeWeight(1);
    stroke(#FFFFFF);
    noFill();
  }
  void drawDoor() {
    arc(50, 50, 80, 80, 0, HALF_PI, OPEN);
    line(50, 50, 50, 90);
  }
}

