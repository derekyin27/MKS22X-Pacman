import java.util.*;
int ghostcounter;
int xg, yg, xpink, ypink,pelletX, pelletY, xgreen, ygreen;
int x;
int y;
int ghostscore = 0;
scaredghost scared = new scaredghost();
int powtime = 0;
//changge counte rlater to 0.
int counter;
boolean ghostdead = false;
boolean pghostdead = false;
boolean gghostdead = false;
int numpell = 0;
int numpell2 = 0;
powerup pow = new powerup();
boolean pisDead;
boolean power = false;
  ghost gho = new ghost();
  pacman pac = new pacman();
int[] lastmove = new int[2];
 int row = 30;
 int col = 30;
 boolean[][] grid = new boolean[row][col];
 boolean[][] pellgrid = new boolean[row][col];
 pellet pell = new pellet();
 boolean noPellet = true;
 pinkghost pgho = new pinkghost();
 greenghost ggho = new greenghost();
 boolean startpowtime = false;
  int gcounter = 50;
  int pgcounter = 50;
  int ggcounter = 50;
void loseGame(){
  if (Math.abs(gho.getX() - pac.getX()) <= 20 && Math.abs(gho.getY() - pac.getY()) <= 20){
    if (!ghostdead){
      if (!power){
        setup2();
      }else{
        gcounter = 0;
        ghostscore += 10;
      }
    }
  }
  if (Math.abs(pgho.getX() - pac.getX()) <= 20 && Math.abs(pgho.getY() - pac.getY()) <= 20){
    if (!pghostdead){
      if (!power){
        setup2();
      }else{
        pgcounter = 0;
        ghostscore += 10;
      }
    }
  }
  if (Math.abs(ggho.getX() - pac.getX()) <= 20 && Math.abs(ggho.getY() - pac.getY()) <= 20){
    if (!gghostdead){
      if (!power){
        setup2();
      }else{
        ggcounter = 0;
        ghostscore += 10;
      }
    }
  }
}



void win(){
  ghostcounter =0;
  ghostscore = 0;

powtime = 0;
//changge counte rlater to 0.
counter = 0;
ghostdead = false;
pghostdead = false;
gghostdead = false;
numpell = 0;
 numpell2 = 0;
 power = false;
 noPellet = true;
 pinkghost pgho = new pinkghost();
 startpowtime = false;
 gcounter = 50;
 pgcounter = 50;
 ggcounter = 50;
  numpell = 0;
    size(600, 600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      if ((rows >= 10 && rows <= 20 && rows != 15 && rows != 16) || (columns >=10 && columns <= 17)  ){
        grid[rows][columns] = false;
        numpell++;
      }

        else grid[rows][columns] = true;
    }
  }
  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 475;
  y = 325;
  xg = 250;
  yg = 70;
  xpink = 70;
  ypink = 250;
  xgreen = 170;
  ygreen = 570;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
  textSize(60);
  text("YOU WIN!!!", 50, 200);

  fill(0, 102, 153);
  delay(100);
}
void setup(){
  ghostcounter =0;
    ghostscore = 0;

powtime = 0;
//changge counte rlater to 0.
counter = 0;
ghostdead = false;
pghostdead = false;
gghostdead = false;
numpell = 0;
 numpell2 = 0;
 power = false;
 noPellet = true;
 pinkghost pgho = new pinkghost();
 startpowtime = false;
 gcounter = 50;
 pgcounter = 50;
 ggcounter = 50;
  numpell = 0;
  size(600,600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      //each cell has a 20% chance of being an obstacle
      if (((rows == 29 || columns == 29 || rows == 0 || columns == 0) && (rows != 14 && rows !=15)) ||
      (rows >= 23 && rows <=24 && (columns == 1 || columns == 2))||
      (rows >= 23 && rows <= 24&& (columns == 27 || columns == 28))||
      (rows >= 26 && rows <= 27 && columns >= 2 && columns <= 11)||
      (rows >= 26 && rows <= 27 && columns >= 18 && columns <= 27)||
      (rows >= 23 && rows <= 25 && columns >= 7 && columns <= 10) ||
      (rows >=23 && rows <= 25 && columns >= 19 && columns <= 22) ||
      (rows >= 23 && rows <= 24 && columns >= 12 && columns <= 17)||
      (rows >= 25 && rows <= 27 && columns >= 13 && columns <= 16) ||
      (rows >= 20 && rows <= 21 && columns >= 2 && columns <=5)||
      (rows >= 22 && rows <= 24 && columns >= 4 && columns <= 5)||
      (rows >= 22 && rows <= 24 && columns >=24 && columns <= 25) ||
      (rows >= 20 && rows <= 21 && columns >=24 && columns <= 27) ||
      (rows >= 20 && rows <= 21 && columns >=7 && columns <= 11) ||
      (rows >= 20 && rows <= 21 && columns >=18 && columns <= 22) ||
      (rows >= 5 && rows <=6 && (columns == 1 || columns == 2))||
      (rows >= 5 && rows <= 6 && (columns == 27 || columns == 28))||
      (rows >= 2 && rows <= 3 && columns >= 2 && columns <= 11)||
      (rows >= 2 && rows <= 3 && columns >= 18 && columns <= 27)||
      (rows >= 4 && rows <= 6 && columns >= 7 && columns <= 10) ||
      (rows >=4 && rows <= 6 && columns >= 19 && columns <= 22) ||
      (rows >= 5 && rows <= 6 && columns >= 12 && columns <= 17)||
      (rows >= 2 && rows <= 3 && columns >= 13 && columns <= 16) ||
      (rows >= 8 && rows <=9 && columns >= 2 && columns <=5)||
      (rows >= 5 && rows <= 7 && columns >= 4 && columns <= 5)||
      (rows >= 5 && rows <= 7 && columns >=24 && columns <= 25) ||
      (rows >= 8 && rows <= 9 && columns >=24 && columns <= 27) ||
      (rows >= 8 && rows <= 9 && columns >=7 && columns <= 11) ||
      (rows >= 8 && rows <= 9 && columns >=18 && columns <= 22) ||
      (rows >= 8 && rows <= 21 && rows != 14 && rows != 15 && columns >=13 && columns <= 16) ||
      (rows >= 11 && rows <= 13 && columns >=2 && columns <= 5)||
      (rows >= 11 && rows <= 13 && columns >=24 && columns <= 27)||
      (rows >= 11 && rows <= 13 && columns >=7 && columns <= 11)||
      (rows >= 11 && rows <= 13 && columns >=18 && columns <= 22) ||
      (rows >= 16 && rows <= 18 && columns >=2 && columns <= 5)||
      (rows >= 16 && rows <= 18 && columns >=24 && columns <= 27)||
      (rows >= 16 && rows <= 18 && columns >=7 && columns <= 11)||
      (rows >= 16 && rows <= 18 && columns >=18 && columns <= 22))
      {
        grid[rows][columns] = true;
      }
       else{
        grid[rows][columns] = false;
        numpell++;
      }
    }
  }
  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 310;
  y = 450;
  xg = 310;
  yg = 310;
  xpink = 370;
  ypink = 90;
    xgreen = 170;
  ygreen = 570;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
}

void setup2(){
  ghostcounter =0;
    ghostscore = 0;

powtime = 0;
//changge counte rlater to 0.
counter = 0;
ghostdead = false;
pghostdead = false;
gghostdead = false;
numpell = 0;
 numpell2 = 0;
 power = false;
 noPellet = true;
 pinkghost pgho = new pinkghost();
 startpowtime = false;
 gcounter = 50;
 pgcounter = 50;
 ggcounter = 50;
  numpell = 0;
  size(600, 600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      if (((rows == 29 || columns == 29 || rows == 0 || columns == 0) && (rows != 14 && rows !=15)) ||
      (rows >= 23 && rows <=24 && (columns == 1 || columns == 2))||
      (rows >= 23 && rows <= 24&& (columns == 27 || columns == 28))||
      (rows >= 26 && rows <= 27 && columns >= 2 && columns <= 11)||
      (rows >= 26 && rows <= 27 && columns >= 18 && columns <= 27)||
      (rows >= 23 && rows <= 25 && columns >= 7 && columns <= 10) ||
      (rows >=23 && rows <= 25 && columns >= 19 && columns <= 22) ||
      (rows >= 23 && rows <= 24 && columns >= 12 && columns <= 17)||
      (rows >= 25 && rows <= 27 && columns >= 13 && columns <= 16) ||
      (rows >= 20 && rows <= 21 && columns >= 2 && columns <=5)||
      (rows >= 22 && rows <= 24 && columns >= 4 && columns <= 5)||
      (rows >= 22 && rows <= 24 && columns >=24 && columns <= 25) ||
      (rows >= 20 && rows <= 21 && columns >=24 && columns <= 27) ||
      (rows >= 20 && rows <= 21 && columns >=7 && columns <= 11) ||
      (rows >= 20 && rows <= 21 && columns >=18 && columns <= 22) ||
      (rows >= 5 && rows <=6 && (columns == 1 || columns == 2))||
      (rows >= 5 && rows <= 6 && (columns == 27 || columns == 28))||
      (rows >= 2 && rows <= 3 && columns >= 2 && columns <= 11)||
      (rows >= 2 && rows <= 3 && columns >= 18 && columns <= 27)||
      (rows >= 4 && rows <= 6 && columns >= 7 && columns <= 10) ||
      (rows >=4 && rows <= 6 && columns >= 19 && columns <= 22) ||
      (rows >= 5 && rows <= 6 && columns >= 12 && columns <= 17)||
      (rows >= 2 && rows <= 3 && columns >= 13 && columns <= 16) ||
      (rows >= 8 && rows <=9 && columns >= 2 && columns <=5)||
      (rows >= 5 && rows <= 7 && columns >= 4 && columns <= 5)||
      (rows >= 5 && rows <= 7 && columns >=24 && columns <= 25) ||
      (rows >= 8 && rows <= 9 && columns >=24 && columns <= 27) ||
      (rows >= 8 && rows <= 9 && columns >=7 && columns <= 11) ||
      (rows >= 8 && rows <= 9 && columns >=18 && columns <= 22) ||
      (rows >= 8 && rows <= 21 && rows != 14 && rows != 15 && columns >=13 && columns <= 16) ||
      (rows >= 11 && rows <= 13 && columns >=2 && columns <= 5)||
      (rows >= 11 && rows <= 13 && columns >=24 && columns <= 27)||
      (rows >= 11 && rows <= 13 && columns >=7 && columns <= 11)||
      (rows >= 11 && rows <= 13 && columns >=18 && columns <= 22) ||
      (rows >= 16 && rows <= 18 && columns >=2 && columns <= 5)||
      (rows >= 16 && rows <= 18 && columns >=24 && columns <= 27)||
      (rows >= 16 && rows <= 18 && columns >=7 && columns <= 11)||
      (rows >= 16 && rows <= 18 && columns >=18 && columns <= 22)){
        grid[rows][columns] = true;
      }
      else {
        grid[rows][columns] = false;
        numpell++;
      }
    }
  }

  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 310;
  y = 450;
  xg = 310;
  yg = 310;
    xgreen = 170;
  ygreen = 570;
  xpink = 370;
  ypink = 90;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
  textSize(60);
  text("Game Over", 100, 300);
  fill(0, 102, 153);
  delay(50);
}
void draw() {
  System.out.println("X: " + x);
    System.out.println("Y: " + y);
  ghostcounter++;
  if (power || pghostdead || ghostdead || gghostdead){
    delay(70);
  }
  if (x == 210 && y == 210 && counter > 100){
    power = true;
    counter = 0;
  }
  numpell2 = 0;
    background(0,0,0);
  for (int r = 0; r < row; r++) {
    for (int c = 0; c < col; c++) {

      int cellX = 20*c;
      int cellY = 20*r;

      //fill the obstacles in with blue
      if (grid[r][c]) {
        fill(0,0,255);
      }
      else {
        fill(0,0,0);
      }

      rect(cellX, cellY, 20, 20);
    }
  }

  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      if (columns * 20 + 10 == pac.getX() && rows * 20 + 10 == pac.getY() ){
        pellgrid[rows][columns] = false;
      }
      if (!grid[rows][columns] && pellgrid[rows][columns]) {
        noPellet = false;
        pell.display(columns * 20 + 10, rows * 20 + 10);
        numpell2++;
      }
    }
  }
  if (noPellet){
    //maybe make a setup2 for a harder level...
    win();
  }
  int score = Math.abs(numpell - numpell2) + ghostscore;
  textSize(20);

  text(score , 50, 50);

  fill(0, 102, 153);
  if (counter > 100){
    pow.display();
  }else{
    if (powtime > 50){
      power = false;
      powtime = 0;
    }
  }
  if(power){
  powtime++;
}
counter++;
    loseGame();
    if (gcounter > 40){
  gho.ghostSetup();
  gho.ghostmove();
  ghostdead = false;
    }else{
      gcounter++;
      ghostdead = true;
    }
    loseGame();
    if (pgcounter > 40){
  pgho.ghostSetup();
  pgho.ghostmove();
  pghostdead = false;
    }else{
      pgcounter++;
      pghostdead = true;
    }

        loseGame();
    if (ggcounter > 40){
  ggho.ghostSetup();
  ggho.ghostmove();
  gghostdead = false;
    }else{
      ggcounter++;
      gghostdead = true;
    }
  pac.display();
  pac.move();
  loseGame();
}
/*void keyPressed(){
if (key == 'w'){
  if (y/20 > 0 && !grid[(y/20)-1][x/20]){
    y-=20;
  }
}
if (key == 's'){
  println(x + " " + y);
  if (y/20 < row-1 && !grid[(y/20)+1][x/20]){
    y+=20;
  }
}
if (key == 'a'){
  println(x + " " + y);
  if (x/20 > 0 && !grid[y/20][(x/20)-1]){
    x-=20;
  }
}
if (key == 'd'){
  println(x + " " + y);
  if (x/20 < col-1 && !grid[y/20][(x/20)+1]){
    x+=20;
  }
}
}
*/
