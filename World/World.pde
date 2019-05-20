int x;
int y;

void setup() {
  size(1000, 1000);
}
void draw(){
  background(255);
  pacman Pac = new pacman();
  Pac.display();
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
class pacman {
  void display(){
  fill(255, 255, 0);
  ellipse(x, y, 100, 100);
  }
  
}
  