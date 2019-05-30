import java.util.*;
int x, y;
 boolean[][] grid;
void setup(){
  size(600, 600);
}
void draw() {
  grid = new boolean[30][30];
  background(0,0,0);
  for (int c = 0; c < 600; c+=20){
    for (int r = 0; r < 600; r+=20){
      if ((r >= 200 && r <= 300) || (c >=200 && c <=300)){
        fill(0,0,0);
        rect(r, c, 20, 20);
        grid[r/20][c/20]=false;
      }
      else {
      fill(0,0,255);
      rect(r, c, 20, 20);
      grid[r/20][c/20]=true;
      }
    }
  }
  pacman pac = new pacman();
  pac.display();
  pac.move();
}