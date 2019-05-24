int x;
int y;
int xg;
int yg;
boolean right, left, up, down, isWall;
void placeTile(int x, int y){
    Tile temp = new Tile();
    fill(0, 0, 255);
    rect(x, y, 50, 50);
}
void setup() {
  size(1000, 1000);
}
void draw(){
  background(0,0,0);
  for (int r = 0; r <= 1000; r+=50){
    for (int c =0; c <= 1000; c+=50){
      placeTile(r, c);
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