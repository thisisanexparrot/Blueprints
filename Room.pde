Door d;
ArrayList xCoords;
ArrayList yCoords;
ArrayList isWall;

class Room {
  Room() {
    strokeWeight(1);
    stroke(#FFFFFF);
    noFill();
    xCoords = new ArrayList();
    yCoords = new ArrayList();
    isWall = new ArrayList();
    d = new Door();
  }
  void addPoint(int x, int y, boolean isWall) {
    xCoords.add(x);
    yCoords.add(y);
    isWall.add(isWall);
  }
  
  void drawRect() {
    for(int i=0; i<xCoords.size()-1; i++) {
      if(isWall[i]) {
        line(xCoords[i], yCoords[i], xCoords[i+1], yCoords[i+1]);
      }  
    }
    if(isWall[xCoords.size()-1]) {
      line(xCoords[i], yCoords[i+1], xCoords[0], yCoords[0]);
    }
  }

  void drawRoom() {
    rect(30, 20, 100, 20);
    d.drawDoor();
  }
}

