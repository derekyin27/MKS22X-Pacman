import java.util.*;
int x, y;
 int row = 30;
 int col = 30;
 boolean[][] grid = new boolean[row][col];
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
  pacman pac = new pacman();
  pac.display();
  pac.move();
}