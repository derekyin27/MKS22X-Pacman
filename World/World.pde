import java.util.*;
int xg, yg, xpink, ypink,pelletX, pelletY;
int x;
int y;
boolean pisDead;
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
void loseGame(){
  if (Math.abs(gho.getX() - pac.getX()) <= 20 && Math.abs(gho.getY() - pac.getY()) <= 20){
    setup2();
  }
  if (Math.abs(pgho.getX() - pac.getX()) <= 20 && Math.abs(pgho.getY() - pac.getY()) <= 20){
    setup2();
  }
}

void win(){
    size(600, 600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      //each cell has a 20% chance of being an obstacle
      if ((rows >= 10 && rows <= 20 && rows != 15 && rows != 16) || (columns >=10 && columns <= 17)  ){
        grid[rows][columns] = false;
      }
      else grid[rows][columns] = true;
    }
  }
  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 250;
  y = 250;
  xg = 250;
  yg = 70;
  xpink = 70;
  ypink = 250;
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
  size(600, 600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      //each cell has a 20% chance of being an obstacle
      if ((rows == 0 || columns == 0 || rows == 29 || columns ==29) || 
      (columns >= 3 && columns <= 12 && rows >= 20 & rows <= 26) || 
      (columns >= 17 && columns <= 26 && rows >=20 && rows <= 26) || 
      (columns >= 4 && columns <=10 && rows >=4 && rows <= 5) || 
      (columns >= 4 && columns <= 5 && rows >=6 && rows <= 11) || 
      (columns >=6 && columns <= 10 && rows >=10 && rows <= 11) || 
      (columns >=19 && columns <=26 && rows >= 4 && rows <= 5) || 
      (rows >=6 && rows <=8 && columns >=19 && columns <= 20) || 
      (rows >=9 && rows <= 10 && columns >=19 && columns <= 26) ||
      (rows >= 11 && rows <= 13 && columns >= 25 && columns <= 26) ||
      (rows >= 14 && rows <= 15 && columns >= 19 && columns <= 26)){
        grid[rows][columns] = true;
      }
      else grid[rows][columns] = false;
    }
  }
  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 250;
  y = 250;
  xg = 250;
  yg = 70;
  xpink = 70;
  ypink = 250;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
}

void setup2(){
  size(600, 600);
  for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      if ((rows == 0 || columns == 0 || rows == 29 || columns ==29) || 
      (columns >= 3 && columns <= 12 && rows >= 20 & rows <= 26) || 
      (columns >= 17 && columns <= 26 && rows >=20 && rows <= 26) || 
      (columns >= 4 && columns <=10 && rows >=4 && rows <= 5) || 
      (columns >= 4 && columns <= 5 && rows >=6 && rows <= 11) || 
      (columns >=6 && columns <= 10 && rows >=10 && rows <= 11) || 
      (columns >=19 && columns <=26 && rows >= 4 && rows <= 5) || 
      (rows >=6 && rows <=8 && columns >=19 && columns <= 20) || 
      (rows >=9 && rows <= 10 && columns >=19 && columns <= 26) ||
      (rows >= 11 && rows <= 13 && columns >= 25 && columns <= 26) ||
      (rows >= 14 && rows <= 15 && columns >= 19 && columns <= 26)){
        grid[rows][columns] = true;
      }
      else grid[rows][columns] = false;
    }
  }
  lastmove[0] = 0;
  lastmove[1] = 20;
  x = 250;
  y = 250;
  xg = 250;
  yg = 70;
  xpink = 70;
  ypink = 250;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
  textSize(60);
  text("YOU LOSE!!!", 50, 200);

  fill(0, 102, 153);
  delay(50);
}
void draw() {
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
      }
    }
  }
  if (noPellet){
    //maybe make a setup2 for a harder level...
    setup();
  }
  gho.ghostSetup();
  gho.ghostmove();
  pgho.ghostSetup();
  pgho.ghostmove();
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
