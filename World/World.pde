import java.util.*;
int x;
int y;
int xg;
int yg;
int gcounter;
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
      if (r == 100 || r == 450){
        placePath(r, c);
      }
      if ( c == 500 || c == 450 || c == 400){
        placePath(r, c);
      }
      else placeWall(r, c);
    }
  }
  pacman Pac = new pacman();
  Pac.display();
  Pac.move();
 // ghost Speedy = new ghost();
  //Speedy.ghostSetup();
  //Speedy.move();
}
void placeWall(int r, int c){
  Tile temp = new Tile(r, c, true);
    fill(0, 0, 255);
    rect(r, c, 50, 50);
    storage[r/50][c/50] = temp;
}
void placePath(int r, int c){
  Tile temp = new Tile(r, c, false);
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
  ellipse(x+425, y+425, 30, 30);
  }
  void move(){
    if (key == 'd'){
      if (isWall(x+50, y)){
        return;
      }
    else x+=50;
  }
  if (key == 'w'){
    if (isWall(x, y-50)){
      return;
    }
    else y-=50;
  }
  if (key == 's'){
    if (isWall(x, y+50)){
      return;
    }
    else y+=50;
}
if (key == 'a'){
  if (isWall(x-50, y)){
    return;
  }
  else x-=50;
}
  }

}