import java.util.Random;
class pinkghost {
  color c;
int getX(){
  return xpink;
}
int getY(){
  return ypink;
}
void ghostmove(){



     int oldx = 0;
    int oldy = 0;

          if (xpink > 570){
      for (int i =0; i < 20; i++){
        delay(3);
        xpink -= 1;
      }
      oldx = -20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (xpink < 30){
      for (int i =0; i < 20; i++){
        delay(3);
        xpink += 1;
      }
      oldx = 20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (ypink < 30){
      for (int i =0; i < 20; i++){
        delay(3);
        ypink += 1;
      }
      oldy = 20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
  if (ypink > 570){
      for (int i =0; i < 20; i++){
        delay(3);
        ypink -= 1;
      }
      oldy = -20;
            lastmove[0] = oldx;
      lastmove[1] = oldy;
    return;
  }
        if (x/20 < col-1 && grid[(ypink/20)][(xpink/20) + 1]){

         for (int i =0; i < 20; i++){
            delay(3);
            xpink -= 1;
          }
          oldx = -20;
          lastmove[0] = oldx;
          lastmove[1] = oldy;
          return;
        }
        if (x/20 > 0 && grid[(ypink/20)][(xpink/20) - 1]){
      for (int i =0; i < 20; i++){
        delay(3);
        xpink += 1;
      }
          oldx = 20;
          lastmove[0] = oldx;
          lastmove[1] = oldy;
          return;
        }
        if (ypink/20 > 0 && grid[(ypink/20) - 1][(xpink/20)]){
          for (int i =0; i < 20; i++){
            delay(3);
            ypink += 1;
          }
          oldy = 20;
          lastmove[0] = oldx;
          lastmove[1] = oldy;
          return;

        }
        if (ypink/20 < row-1 && grid[(ypink/20) + 1][(xpink/20)]){
          for (int i =0; i < 20; i++){
            delay(3);
            ypink -= 1;
          }
          oldy = -20;
          lastmove[0] = oldx;
          lastmove[1] = oldy;
          return;
        }
    //250!!!!
  //random movmeent here
    //continue

    //print out.. tst it
    if (ypink == y){
     if (xpink < (x)){
      for (int i =0; i < 20; i++){
        delay(3);
        xpink += 1;
      }
      oldx = 20;
     }
     else{
      for (int i =0; i < 20; i++){
        delay(3);
        xpink-=1;
      }
       oldx = -20;
     }
    }
    else if(xpink == x){
     if (ypink < (y)){
      for (int i =0; i < 20; i++){
        delay(3);
        ypink += 1;
      }
      oldy = 20;
     }
     else{
      for (int i =0; i < 20; i++){
        delay(3);
        //Swithcd up,, test it out
        ypink -= 1;
      }
       oldy = -20;
       }
    }
    else{

//dfdfdfdfd
//fix oldx and oldy, should be 20 not 4
  if (Math.random() <  .2){
    Random rand = new Random();
    int n = rand.nextInt(4);
    if (n == 0){

        for (int i =0; i < 20; i++){
        delay(3);
        xpink -= 1;
        }
        oldx = -20;
      //switch up the numbrs..
      /*
        }*/
    }
    if (n == 1){
       for (int i =0; i < 20; i++){
        delay(3);
       ypink += 1;
       }
       oldy = 20;
      /*
        }*/
    }
    if (n == 2){
      for (int i =0; i < 20; i++){
        delay(3);
        ypink -= 1;
      }
      oldy = -20;
      /*
        }*/
    }
    if (n == 3){

      for (int i =0; i < 20; i++){
        delay(3);
      xpink += 1;
      }
      oldx = 20;
      /*
*/
    }
  }
    else{
       int divx = lastmove[0] / 20;
       int divy = lastmove[1] / 20;
        for (int i = 0; i < 20; i++){
          delay(3);
          ypink += divy;
          xpink += divx;
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
   fill(255,200,200);
   //find good coords later
   int[] lastmove = new int[2];
   lastmove[0] = 0;
   lastmove[1] = 4;
    arc(xpink, ypink, 25, 25, PI, 2 * PI);
    ellipse(xpink + 3.5, 3 + ypink, 7, 7);
    ellipse(xpink - 10, 3 + ypink, 7, 7);
    ellipse(xpink + 10, 3 + ypink, 7, 7);
    ellipse(xpink - 3.5, 3 + ypink, 7, 7);

    // fill the ellipses and arc with white (its mouth/eyes)
    fill(253, 253,253);
    ellipse(xpink + 6, ypink - 6, 8, 8);
    ellipse(xpink - 6, ypink - 6, 8, 8);

    fill(1, 1, 1);
    ellipse(xpink + 6, ypink - 6, 2, 2);
    ellipse(xpink - 6, ypink - 6, 2, 2);
  }
}
