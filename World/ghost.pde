
/*class ghost {
  color c;
  void move(){
    xg = 0;
    yg = 0;
    if (xg == x){
     if (xg < x){
      xg += 4;
     }
     else{
       xg -= 4;
     }
    }
    else if(yg == y){
     if (yg < y){
      yg += 4;
     }
     else{
       yg -= 4;
       }
    }else{
      xg += lastmove[0];
      yg += lastmove[1];
    }
    
    else{
     int rand = (int) random(0, 20);
     if (rand == 1){
       //MAKE LASTMOVE!!!!
       xg += lastmove[0];
       yg += lastmove[1];
     }

      int ran = (int) random(0, 3);

      if (ran == 0){
        yg += 3;
      }
      if (ran == 1){
        xg -= 3;
      }
      if (ran == 2){
        yg -= 3;
      }
      else{xg += 3;}
      lastmove[0] = xg;
      lastmove[1] = yg;
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
*/
