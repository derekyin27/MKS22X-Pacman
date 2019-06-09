class scaredghost{
 void display(){
   fill(255, 255, 255);
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
