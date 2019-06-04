class pellet{
  color c = color(255,204,0);
  void display(int x, int y){
    fill(c);
    ellipse(x, y, 5, 5);
    pelletX = x;
    pelletY = y;
    pisDead = false;
  }
  int getX(){
    return pelletX;
  }
  int getY(){
    return pelletY;
  }
  boolean isDead(){
    if (pelletX == x + 240 && pelletY == y + 240){
      pisDead = true;
      return true;
    }
    return false;
  }
  void kill(){
    if (isDead()){
      c = color(0,0,0);
      fill(c);
    }
  }
}
