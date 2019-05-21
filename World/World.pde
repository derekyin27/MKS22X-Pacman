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
  Speedy.display();
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
/*class PinkGhost extends ghost {

  public PinkGhost() {
    c = color(255, 102, 102);
    ghostY = 310;
    ghostX = 350;

  }

  //go back to middle
  public void revive(){
    c = color(255, 102, 102);
  }


}
*/
class ghost {
  void display(){
    fill(255,0,0);
  rect(xg, yg, 75, 100);
  };
  void move(){
    
    xg+=random(-10, 10);
    yg+=random(-10,10);
  }
}