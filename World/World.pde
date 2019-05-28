int x, y;
void setup(){
  size(500, 500);
}
void draw() {
  background(0,0,0);
  for (int r = 0; r <= 500; r+=20){
    for (int c = 0; c <= 500; c+=20){
      fill(0,0,255);
      rect(r, c, 20, 20);
    }
  }
  pacman pac = new pacman();
  pac.display();
}