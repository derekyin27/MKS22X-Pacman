import java.util.*;
int x, y, xg, yg, pelletX, pelletY;
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
      if (random(1) < .2) {
        grid[rows][columns] = true;
      }
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
      System.out.println("columns: " + (columns * 20 + 10));
      System.out.println("rows: " + (rows * 20 + 10));
      System.out.println(pac.getX() + ", " + pac.getY());
      if (columns * 20 + 10 == pac.getX() && rows * 20 + 10 == pac.getY() ){
        pellgrid[rows][columns] = false;
      }
      if (!grid[rows][columns] && pellgrid[rows][columns]) {
        pell.display(columns * 20 + 10, rows * 20 + 10);
      }
    }
  }
  pac.display();
  pac.move();
  gho.ghostSetup();
  gho.ghostmove();

}
