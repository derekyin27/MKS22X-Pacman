import java.util.*;
int x;
int y;
int xg;
int yg;
boolean right, left, up, down, isWall;
int tileX, tileY;
void placeTile(int x, int y){
    
}
void setup() {
  size(1000, 1000);
}
void draw(){
  background(0,0,0);
  Tile[][] storage = new Tile[21][21];
  for (int r = 0; r <= 1000; r+=50){
    for (int c =0; c <= 1000; c+=50){
      Tile temp = new Tile(r, c);
    fill(0, 0, 255);
    rect(r, c, 50, 50);
    storage[r/50][c/50] = temp;
    }
  }
  pacman Pac = new pacman();
  Pac.display();
  Pac.move();
  ghost Speedy = new ghost();
  Speedy.ghostSetup();
  Speedy.move();
}
class pacman {
  void display(){
  fill(255, 255, 0);
  ellipse(x, y, 30, 30);
  }
  void move(){
    if (key == 'd'){
      //if (x+4 
    x+=4;
  }
  if (key == 'w'){
    y-=4;
  }
  if (key == 's'){
    y+=4;
}
if (key == 'a'){
  x-=4;
}
  }
    
}