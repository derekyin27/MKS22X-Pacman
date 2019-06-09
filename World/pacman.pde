class pacman{
void display(){
  fill(255,255,0);
  ellipse(x, y, 20, 20);
}
int getX(){
  return x;
}
int getY(){
  return y;
}
void move(){
 if (key == 'w'){
     if (y <= 20){
       y = 610;
  }
  if (y/20 > 0 && !grid[(y/20)-1][x/20]){
    y-=20;
  }
}
if (key == 's'){
    if (y >= 590){
       y = -10;
    }
  if (y/20 < row-1 && !grid[(y/20)+1][x/20]){
       y += 20;
  }
}
if (key == 'a'){
  if (x <= 20){
       x = 610;
  }
  if (x/20 > 0 && !grid[y/20][(x/20)-1]){
    x-=20;
  }
}
if (key == 'd'){
    if (x >= 590){
       x = -10;
    }
  if (x/20 < col-1 && !grid[y/20][(x/20)+1]){
    x+=20;
  }
}
}
}
