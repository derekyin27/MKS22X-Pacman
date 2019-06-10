import java.util.Random;
class greenghost {
  color c;
int getX(){
  return xgreen;
}
int getY(){
  return ygreen;
}
void ghostmove(){

  if (!power){

           if (xgreen > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        xgreen -= 1;
      }
    return;
  }
  if (xgreen < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        xgreen += 1;
      }
    return;
  }
  if (ygreen < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        ygreen += 1;
      }
    return;
  }
  if (ygreen > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        ygreen -= 1;
      }
    return;
  }

     Random rand = new Random();
    int n = rand.nextInt(4);

      if (n == 0){

           //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ygreen/20)][(xgreen/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen += 1;
          }
          return;
        }
                                             //if crash into +y
        if (!(ygreen/20 < row-1 && grid[(ygreen/20) + 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen += 1;
          }


          return;
        }

                      //if crash into -y
        if (!(ygreen/20 > 0 && grid[(ygreen/20) - 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen -= 1;
          }

          return;

        }

                //if crash into -X
        if (!(x/20 > 0 && grid[(ygreen/20)][(xgreen/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen -= 1;
          }

          return;
        }




      }
            if (n == 2){
                      //if crash into -X
        if (!(x/20 > 0 && grid[(ygreen/20)][(xgreen/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen -= 1;
          }

          return;
        }

                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ygreen/20)][(xgreen/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen += 1;
          }
          return;
        }

                                        //if crash into +y
        if (!(ygreen/20 < row-1 && grid[(ygreen/20) + 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen += 1;
          }
              //if crash into -y
        if (!(ygreen/20 > 0 && grid[(ygreen/20) - 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen -= 1;
          }

          return;

        }


          return;
        }


      }
            if (n == 3){
                              //if crash into +y
        if (!(ygreen/20 < row-1 && grid[(ygreen/20) + 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen += 1;
          }


          return;
        }
                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ygreen/20)][(xgreen/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen += 1;
          }
          return;
        }
                //if crash into -y
        if (!(ygreen/20 > 0 && grid[(ygreen/20) - 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen -= 1;
          }

          return;

        }
                      //if crash into -X
        if (!(x/20 > 0 && grid[(ygreen/20)][(xgreen/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen -= 1;
          }

          return;
        }





      }
            if (n == 1){

                //if crash into -y
        if (!(ygreen/20 > 0 && grid[(ygreen/20) - 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen -= 1;
          }

          return;

        }
                //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ygreen/20)][(xgreen/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen += 1;
          }
          return;
        }


                              //if crash into +y
        if (!(ygreen/20 < row-1 && grid[(ygreen/20) + 1][(xgreen/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ygreen += 1;
          }


          return;
        }
                //if crash into -X
        if (!(x/20 > 0 && grid[(ygreen/20)][(xgreen/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xgreen -= 1;
          }

          return;
        }

      }




//
    }

  }
  void ghostSetup(){
    if (!power){
fill(0, 255, 0);
    }else{
      fill(255,255,255);
    }
   //find good coords later
   int[] lastmove = new int[2];
   lastmove[0] = 0;
   lastmove[1] = 4;
    arc(xgreen, ygreen, 25, 25, PI, 2 * PI);
    ellipse(xgreen + 3.5, 3 + ygreen, 7, 7);
    ellipse(xgreen - 10, 3 + ygreen, 7, 7);
    ellipse(xgreen + 10, 3 + ygreen, 7, 7);
    ellipse(xgreen - 3.5, 3 + ygreen, 7, 7);

    // fill the ellipses and arc with white (its mouth/eyes)
    fill(253, 253,253);
    ellipse(xgreen + 6, ygreen - 6, 8, 8);
    ellipse(xgreen - 6, ygreen - 6, 8, 8);

    fill(1, 1, 1);
    ellipse(xgreen + 6, ygreen - 6, 2, 2);
    ellipse(xgreen - 6, ygreen - 6, 2, 2);
  }
}
