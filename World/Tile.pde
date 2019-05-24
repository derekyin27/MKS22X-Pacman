
class Tile extends World{
  public Tile(int x, int y){
    right = false;
    left = false;
    up = false;
    down = false;
    ifWall = true;
    tileX = x;
    tileY = y;
  }
  boolean getRight(){
    return right;
  }
  boolean getLeft(){
    return left;
  }
  boolean getUp(){
    return up;
  }
  boolean getDown(){
    return down;
  }
  int getX(){
    return tileX;
  }
  int getY(){
    return tileY;
  }
  boolean wall(){
    return ifWall;
  }
  void makeIntoPath(){
    right = true;
    left = true;
    up = true;
    down = true;
    ifWall = false;
    tileX = x;
    tileY = y;
}
}