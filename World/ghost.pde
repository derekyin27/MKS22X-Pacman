import java.util.Random;
class ghost {
  color c;
int getX(){
  return xg;
}
int getY(){
  return yg;
}
void ghostmove(){
     int oldx = 0;
    int oldy = 0;
    //250!!!!
  //random movmeent here
    //continue

    //print out.. tst it
    if (yg == y){
     if (xg < (x)){
      for (int i =0; i < 20; i++){
        delay(10);
        xg += 1;
      }
      oldx = 20;
     }
     else{
      for (int i =0; i < 20; i++){
        delay(10);
        xg-=1;
      }
       oldx = -20;
     }
    }
    else if(xg == x){
     if (yg < (y)){
      for (int i =0; i < 20; i++){
        delay(10);
        yg += 1;
      }
      oldy = 20;
     }
     else{
      for (int i =0; i < 20; i++){
        delay(10);
        //Swithcd up,, test it out
        yg -= 1;
      }
       oldy = -20;
       }
    }
    else{
      if (xg > 590){
      for (int i =0; i < 20; i++){
        delay(10);
        xg -= 1;
      }
      oldx = -20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (xg < 10){
      for (int i =0; i < 20; i++){
        delay(10);
        xg += 1;
      }
      oldx = 20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (yg < 10){
      for (int i =0; i < 20; i++){
        delay(10);
        yg += 1;
      }
      oldy = 20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (yg > 590){
      for (int i =0; i < 20; i++){
        delay(10);
        yg -= 1;
      }
      oldy = -20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
//dfdfdfdfd
//fix oldx and oldy, should be 20 not 4
  if (Math.random() <  .2){
    Random rand = new Random();
    int n = rand.nextInt(4);
    if (n == 0){
      for (int i =0; i < 20; i++){
        delay(10);
        xg-=1;
      }
      oldx = -20;
    }
    if (n == 1){
      for (int i =0; i < 20; i++){
        delay(10);
        xg+=1;
      }
      oldx = +20;
    }
    if (n == 2){
      for (int i =0; i < 20; i++){
        delay(10);
        yg+=1;
      }
      oldy = +20;
    }
    else {
      for (int i =0; i < 20; i++){
        delay(10);
        yg-=1;
      }
      oldy = -20;
    }
  }
    else{
       int divx = lastmove[0] / 20;
       int divy = lastmove[1] / 20;
        for (int i = 0; i < 20; i++){
          delay(10);
          yg += divy;
          xg += divx;
        }
       //MAKE LASTMOVE!!!!
       oldx = lastmove[0];
       oldy = lastmove[1];
  }
    }
      lastmove[0] = oldx;
      lastmove[1] = oldy;
  }
  void ghostSetup(){
   fill(c);
   //find good coords later
   int[] lastmove = new int[2];
   lastmove[0] = 0;
   lastmove[1] = 4;
    arc(xg, yg, 25, 25, PI, 2 * PI);
    ellipse(xg + 3.5, 3 + yg, 7, 7);
    ellipse(xg - 10, 3 + yg, 7, 7);
    ellipse(xg + 10, 3 + yg, 7, 7);
    ellipse(xg - 3.5, 3 + yg, 7, 7);

    // fill the ellipses and arc with white (its mouth/eyes)
    fill(253, 253,253);
    ellipse(xg + 6, yg - 6, 8, 8);
    ellipse(xg - 6, yg - 6, 8, 8);

    fill(1, 1, 1);
    ellipse(xg + 6, yg - 6, 2, 2);
    ellipse(xg - 6, yg - 6, 2, 2);
  }
}
