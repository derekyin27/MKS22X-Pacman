class pacman{
void display(){
  fill(255,255,0);
  ellipse(x+250,y+ 250, 20, 20);
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