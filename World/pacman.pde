class pacman{
void display(){
  fill(255,255,0);
  ellipse(x+250, y+250, 20, 20);
}
int getX(){
  return x + 250;
}
int getY(){
  return y + 250;
}
void move(){
  int reset = 0;
  if (key == 'd' && reset == 0 && !grid[(y-10)/20][((x-10)/20)+1]){
    for (int i =0; i < 5; i++){
      reset+=1;
      x+=4;
      delay(10);
      
    }
    reset = 0;
  }
  if (key == 'w' && reset == 0 ){
    for (int i =0; i < 5; i++){
      y-=4;
      delay(10);
      reset += 1;
    }
    reset = 0;
  }
  if (key == 's'&& reset ==0){
    for (int i =0; i < 5; i++){
      y+=4;
      delay(10);
      reset+=1;
    }
    reset =0;
  }
  if (key == 'a' && reset == 0){
    for (int i =0; i < 5; i++){
      x-=4;
      delay(10);
      reset+=1;
    }
    reset =0;
  }
}
}
