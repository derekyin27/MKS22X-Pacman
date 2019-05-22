
class ghost {
  color c;
  void move(){
    xg+=random(-10, 10);
    yg+=random(-10,10);
  }
  void ghostSetup(){
    fill(c);
    ellipse(xg - 10, yg +3, 7, 7);
  }
}