import java.util.*;
int xg, yg, pelletX, pelletY;
int x = 240;
int y = 240;

boolean pisDead;
  ghost gho = new ghost();
  pacman pac = new pacman();
int[] lastmove = new int[2];
 int row = 30;
 int col = 30;
 boolean[][] grid = new boolean[row][col];
 boolean[][] pellgrid = new boolean[row][col];
 pellet pell = new pellet();
void setup(){
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
  xg = 250;
  yg = 80;
   for (int rows = 0; rows < grid.length; rows++) {
    for (int columns = 0; columns < grid[rows].length; columns++) {
      pellgrid[rows][columns] = true;
    }
  }
}
void draw() {
    background(0,0,0);
  for (int r = 0; r < row; r++) {
    for (int c = 0; c < col; c++) {

      int cellX = 20*c;
      int cellY = 20*r;

      //fill the obstacles in with red
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
      //System.out.println("columns: " + (columns * 20 + 10));
      //System.out.println("rows: " + (rows * 20 + 10));
      //System.out.println(pac.getX() + ", " + pac.getY());
      if (columns * 20 + 10 == pac.getX() && rows * 20 + 10 == pac.getY() ){
        pellgrid[rows][columns] = false;
      }
      if (!grid[rows][columns] && pellgrid[rows][columns]) {
        pell.display(columns * 20 + 10, rows * 20 + 10);
      }
    }
  }
  gho.ghostSetup();
  gho.ghostmove();
  pac.display();
  pac.move();
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
