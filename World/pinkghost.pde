//build a grid
int rows = 20;
int columns = 20;
//if a cell is true it's an obstacle
boolean[][] grid = new boolean[rows][columns];

//where the player is in the grid
int playerIndexX = 10;
int playerIndexY = 10;

void setup() {
  size(300, 300);

  //randomly place obstacles in the grid
  for (int row = 0; row < grid.length; row++) {
    for (int column = 0; column < grid[row].length; column++) {
      //each cell has a 20% chance of being an obstacle
      if (random(1) < .2) {
        grid[row][column] = true;
      }
    }
  }
}

void draw() {
  background(128);

  float cellWidth = width/columns;
  float cellHeight = height/rows;

  for (int row = 0; row < rows; row++) {
    for (int column = 0; column < columns; column++) {
    
      float cellX = cellWidth*column;
      float cellY = cellHeight*row;

      //fill the obstacles in with red
      if (grid[row][column]) {
        fill(255, 0, 0);
      } 
      else {
        noFill();
      }

      rect(cellX, cellY, cellWidth, cellHeight);
    }
  }

  //fill the player's cell with green
  float playerPixelX = playerIndexX * cellWidth;
  float playerPixelY = playerIndexY * cellHeight;
  fill(0, 255, 0);
  rect(playerPixelX, playerPixelY, cellWidth, cellHeight);
}

void keyPressed() {
  if (keyCode == UP) {
    //if we aren't in the top row and the cell above us doesn't contain an obstacle
    //then we can move up
    if (playerIndexY > 0 && !grid[playerIndexY-1][playerIndexX]) {
      playerIndexY--;
    }
  } 
  else if (keyCode == DOWN) {
    //if we aren't in the bottom row and the cell below us doesn't contain an obstacle
    //then we can move down
    if (playerIndexY < rows-1 && !grid[playerIndexY+1][playerIndexX]) {
      playerIndexY++;
    }
  } 
  else if (keyCode == LEFT) {
    //if we aren't in the left-most column and the cell to our left doesn't contain an obstacle
    //then we can move left
    if (playerIndexX > 0 && !grid[playerIndexY][playerIndexX-1]) {
      playerIndexX--;
    }
  } 
  else if (keyCode == RIGHT) {
    //if we aren't in the right-most column and the cell to our right doesn't contain an obstacle
    //then we can move right
    if (playerIndexX < columns-1 && !grid[playerIndexY][playerIndexX+1]) {
      playerIndexX++;
    }
  }
}