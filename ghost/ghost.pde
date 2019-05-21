class ghost {
  void display(){
    fill(255,0,0);
  rect(xg, yg, 75, 100);
  };
  void move(){
    
    xg+=random(-10, 10);
    yg+=random(-10,10);
  }
}