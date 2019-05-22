int x;
int y;
int xg;
int yg;
void setup() {
  size(1000, 1000);
}
void draw(){
  background(0,0,0);
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
  ellipse(x, y, 100, 100);
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