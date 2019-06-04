class pacman{
void display(){
  fill(255,255,0);
  ellipseMode(CORNER);
  ellipse(x, y, 20, 20);
}
int getX(){
  return x+240;
}
int getY(){
  return y+240;
}
void move(){
  if (key == 'd'){
    x+=20;
  }
  if (key == 'w' ){
    y-=20;
  }
  if (key == 's'){
   y+=20;

  }
  if (key == 'a'){
    x-=20;
  }
}
}
