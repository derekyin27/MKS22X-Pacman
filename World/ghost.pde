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

  if (!power){

           if (xg > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        xg -= 1;
      }
    return;
  }
  if (xg < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        xg += 1;
      }
    return;
  }
  if (yg < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        yg += 1;
      }
    return;
  }
  if (yg > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        yg -= 1;
      }
    return;
  }

     Random rand = new Random();
    int n = rand.nextInt(4);

      if (n == 0){

           //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(yg/20)][(xg/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg += 1;
          }
          return;
        }
                                             //if crash into +y
        if (!(yg/20 < row-1 && grid[(yg/20) + 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg += 1;
          }


          return;
        }

                      //if crash into -y
        if (!(yg/20 > 0 && grid[(yg/20) - 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg -= 1;
          }

          return;

        }

                //if crash into -X
        if (!(x/20 > 0 && grid[(yg/20)][(xg/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg -= 1;
          }

          return;
        }




      }
            if (n == 2){
                      //if crash into -X
        if (!(x/20 > 0 && grid[(yg/20)][(xg/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg -= 1;
          }

          return;
        }

                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(yg/20)][(xg/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg += 1;
          }
          return;
        }
            //if crash into -y
        if (!(yg/20 > 0 && grid[(yg/20) - 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg -= 1;
          }

          return;

        }
                                        //if crash into +y
        if (!(yg/20 < row-1 && grid[(yg/20) + 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg += 1;
          }



          return;
        }


      }
            if (n == 3){
                              //if crash into +y
        if (!(yg/20 < row-1 && grid[(yg/20) + 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg += 1;
          }


          return;
        }
                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(yg/20)][(xg/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg += 1;
          }
          return;
        }
                //if crash into -y
        if (!(yg/20 > 0 && grid[(yg/20) - 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg -= 1;
          }

          return;

        }
                      //if crash into -X
        if (!(x/20 > 0 && grid[(yg/20)][(xg/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg -= 1;
          }

          return;
        }





      }
            if (n == 1){

                //if crash into -y
        if (!(yg/20 > 0 && grid[(yg/20) - 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg -= 1;
          }

          return;

        }
                        //if crash into -X
        if (!(x/20 > 0 && grid[(yg/20)][(xg/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg -= 1;
          }

          return;
        }
                //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(yg/20)][(xg/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xg += 1;
          }
          return;
        }


                              //if crash into +y
        if (!(yg/20 < row-1 && grid[(yg/20) + 1][(xg/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            yg += 1;
          }


          return;
        }


      }




//
    }

  }
  void ghostSetup(){
    if (!power){
fill(127,0,0);
    }else{
      fill(255,255,255);
    }
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
