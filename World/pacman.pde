class pacman{
void display(){
  fill(255,255,0);
  ellipse(x, y, 50, 50);
}
int getX(){
  return x;
}
int getY(){
  return y;
}
void move(){
 if (key == 'w'){
  if (y/20 > 0 && !grid[(y/20)-1][x/20]){
    y-=50;
  }
}
if (key == 's'){
  if (y/20 < row-1 && !grid[(y/20)+1][x/20]){
    y+=50;
  }
}
if (key == 'a'){
  if (x/50 > 0 && !grid[y/50][(x/50)-1]){
    x-=50;
  }
}
if (key == 'd'){
  if (x/20 < col-1 && !grid[y/20][(x/20)+1]){
    x+=50;
  }
}
}
}
