import java.util.*;
int x;
int y;
int xg;
int yg;
boolean right, left, up, down, ifWall;
int[] ghostLast;
Tile[][] storage = new Tile[21][21];
int tileX, tileY;
void placeTile(int x, int y){

}
void setup() {
  size(1000, 1000);
}
void draw(){
  background(0,0,0);
  for (int r = 0; r <= 1000; r+=50){
    for (int c =0; c <= 1000; c+=50){
      if (r == 0){
        placePath(r, c);
      }
      if ( c == 10){
        placePath(r, c);
      }
      else placeWall(r, c);
    }
  }
  pacman Pac = new pacman();
  Pac.display();
  Pac.move();
  ghost Speedy = new ghost();
  Speedy.ghostSetup();
  Speedy.move();
}
void placeWall(int r, int c){
  Tile temp = new Tile(r, c);
    fill(0, 0, 255);
    rect(r, c, 50, 50);
    storage[r/50][c/50] = temp;
}
void placePath(int r, int c){
  Tile temp = new Tile(r, c);
  temp.makeIntoPath();
    fill(0, 0, 0);
    rect(r, c, 50, 50);
    storage[r/50][c/50] = temp;
}
boolean isWall(int row, int col){
    if (storage[row/50][col/50].wall()){
    return true;
    }
    else return false;
  }
class pacman {
  void display(){
  fill(255, 255, 0);
  ellipse(x+500, y+500, 30, 30);
  }
  void move(){
    if (key == 'd'){
      if (isWall(x+4, y)){
        return;
      }
    else x+=4;
  }
  if (key == 'w'){
    if (isWall(x, y-4)){
      return;
    }
    else y-=4;
  }
  if (key == 's'){
    if (isWall(x, y+4)){
      return;
    }
    else y+=4;
}
if (key == 'a'){
  if (isWall(x-4, y)){
    return;
  }
  else x-=4;
}
  }

}
