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

  if (!power){

           if (xpink > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        xpink -= 1;
      }
    return;
  }
  if (xpink < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        xpink += 1;
      }
    return;
  }
  if (ypink < 30){
      for (int i =0; i < 10; i++){
        delay(1);
        ypink += 1;
      }
    return;
  }
  if (ypink > 570){
      for (int i =0; i < 10; i++){
        delay(1);
        ypink -= 1;
      }
    return;
  }

     Random rand = new Random();
    int n = rand.nextInt(4);

      if (n == 0){

           //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ypink/20)][(xpink/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink += 1;
          }
          return;
        }
                                             //if crash into +y
        if (!(ypink/20 < row-1 && grid[(ypink/20) + 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink += 1;
          }


          return;
        }

                      //if crash into -y
        if (!(ypink/20 > 0 && grid[(ypink/20) - 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink -= 1;
          }

          return;

        }

                //if crash into -X
        if (!(x/20 > 0 && grid[(ypink/20)][(xpink/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink -= 1;
          }

          return;
        }




      }
            if (n == 2){
                      //if crash into -X
        if (!(x/20 > 0 && grid[(ypink/20)][(xpink/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink -= 1;
          }

          return;
        }

                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ypink/20)][(xpink/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink += 1;
          }
          return;
        }
            //if crash into -y
        if (!(ypink/20 > 0 && grid[(ypink/20) - 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink -= 1;
          }

          return;

        }
                                        //if crash into +y
        if (!(ypink/20 < row-1 && grid[(ypink/20) + 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink += 1;
          }



          return;
        }


      }
            if (n == 3){
                              //if crash into +y
        if (!(ypink/20 < row-1 && grid[(ypink/20) + 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink += 1;
          }


          return;
        }
                   //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ypink/20)][(xpink/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink += 1;
          }
          return;
        }
                //if crash into -y
        if (!(ypink/20 > 0 && grid[(ypink/20) - 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink -= 1;
          }

          return;

        }
                      //if crash into -X
        if (!(x/20 > 0 && grid[(ypink/20)][(xpink/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink -= 1;
          }

          return;
        }





      }
            if (n == 1){

                //if crash into -y
        if (!(ypink/20 > 0 && grid[(ypink/20) - 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink -= 1;
          }

          return;

        }
                        //if crash into -X
        if (!(x/20 > 0 && grid[(ypink/20)][(xpink/20) - 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink -= 1;
          }

          return;
        }
                //if  going to crash into +X
        if (!(x/20 < col-1 && grid[(ypink/20)][(xpink/20) + 1])){
          for (int i =0; i < 20; i++){
            delay(1);
            xpink += 1;
          }
          return;
        }


                              //if crash into +y
        if (!(ypink/20 < row-1 && grid[(ypink/20) + 1][(xpink/20)])){
          for (int i =0; i < 20; i++){
            delay(1);
            ypink += 1;
          }


          return;
        }


      }




//
    }

  }
  void ghostSetup(){
    if (!power){
fill(255,200,200);
    }else{
      fill(255,255,255);
    }
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
