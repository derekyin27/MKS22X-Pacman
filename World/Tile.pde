
class Tile extends World{
  public Tile(int x, int y){
    right = false;
    left = false;
    up = false;
    down = false;
    isWall = true;
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

}