import java.util.*;
int x, y;
 ArrayList<String> grid;
void setup(){
  size(500, 500);
}
void draw() {
  grid = new ArrayList<String>();
  background(0,0,0);
  for (int c = 0; c <= 500; c+=20){
    for (int r = 0; r <= 500; r+=20){
      if ((r >= 200 && r <= 300) || (c >=200 && c <=300)){
        fill(0,0,0);
        rect(r, c, 20, 20);
        grid.add("path");
      }
      else {
      fill(0,0,255);
      rect(r, c, 20, 20);
      grid.add("wall");
      }
    }
  }
  pacman pac = new pacman();
  pac.display();
  pac.move();
}
