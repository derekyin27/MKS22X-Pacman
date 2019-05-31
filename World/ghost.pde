class ghost {
  color c;
  void ghostmove(){
    if (xg == x && yg == y){
      //Lose game
    }
    
    //continue
    int oldx = 0;
    int oldy = 0;
    if (xg == x){
     if (xg < x){
      for (int i =0; i < 5; i++){
        delay(10);
        xg+=4;
      }
      oldx = 4;
     }
     else{
      for (int i =0; i < 5; i++){
        delay(10);
        xg-=4;
      }
       oldx = -4;
     }
    }
    else if(yg == y){
     if (yg < y){
      for (int i =0; i < 5; i++){
        delay(10);
        yg+=4;
      }
      oldy = 4;
     }
     else{
      for (int i =0; i < 5; i++){
        delay(10);
        yg-=4;
      }
       oldy = -4;
       }
    }
    
    else{
     int rand = (int) random(0, 20);
     if (rand == 1){
       int divx = lastmove[0] / 4;
       int divy = lastmove[1] / 4;
        for (int i =0; i < 5; i++){
          delay(10);
          yg+= divy;
          xg += divx;
        }
       //MAKE LASTMOVE!!!!
       xg += lastmove[0];
       yg += lastmove[1];
       oldx = lastmove[0];
       oldy = lastmove[1];       
     }
    else{
      int ran = (int) random(0, 3);

      if (ran == 0){
      for (int i =0; i < 5; i++){
        delay(10);
        yg+=4;
      }
        oldy = 3;
      }
      if (ran == 1){
      for (int i =0; i < 5; i++){
        delay(10);
        xg -=4;
      }
        oldx = 3;
      }
      if (ran == 2){
      for (int i =0; i < 5; i++){
        delay(10);
        yg-=4;
      }
        oldy = -3;
      }
      else{
      for (int i =0; i < 5; i++){
        delay(10);
        xg+=4;
      }
        oldx= 3;
      }
    }
      
      lastmove[0] = oldx;
      lastmove[1] = oldy;
    }
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