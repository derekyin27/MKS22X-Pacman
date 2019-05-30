class pacman{
void display(){
  fill(255,255,0);
  ellipseMode(CENTER);
  ellipse(x+250,y+ 250, 20, 20);
}
void move(){
  int reset = 0;
  if (key == 'd' && reset == 0 && x < 29 && !grid[y][x+1]){
    for (int i =0; i < 5; i++){
      delay(10);
      x+=4;
      reset+=1;
    }
    reset = 0;
  }
  if (key == 'w' && reset == 0){
    for (int i =0; i < 5; i++){
      delay(10);
      y-=4;
      reset+=1;
    }
    reset = 0;
  }
  if (key == 's'&& reset ==0){
    for (int i =0; i < 5; i++){
      delay(10);
      y+=4;
      reset+=1;
    }
    reset =0;
  }
  if (key == 'a' && reset == 0){
    for (int i =0; i < 5; i++){
      delay(10);
      x-=4;
      reset+=1;
    }
    reset =0;
  }
}
}