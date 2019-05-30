import java.util.*;
int x, y;
 boolean[][] grid;
void setup(){
  size(600, 600);
}
void draw() {
  grid = new boolean[30][30];
  background(0,0,0);
  for (int c = 0; c < 30; c++){
    for (int r = 0; r < 30; r++){
      if ((r >= 15 && r <= 16) || (c >=15 && c <=16)){
        fill(0,0,0);
        rect(r*20, c*20, 20, 20);
        grid[r][c]=false;
      }
      else {
      fill(0,0,255);
      rect(r*20, c*20, 20, 20);
      grid[r][c]=true;
      }
    }
  }
  pacman pac = new pacman();
  pac.display();
  pac.move();
}