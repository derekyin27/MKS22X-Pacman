# Development Log
5/20/19-
Derek: Made repo, started testing on processing. Worked on moving the Pacman with basic WASD controls in the display.

Albert: Made PinkGhost, we will soon add Ghost.pde.

5/21/19
Derek: Today, I worked on the board and tested ghost movement.
Added a ghost class and tested random movement for the ghost. Couldn't figure out how to make ghost movement fluid.
Changed background for level to black.

Albert: Today, I made ghost a separate file and wrote and drew the actual ghost on the code.

5/22/19
Derek: Today, I created a Tile class to start implementing a series of nodes. 
Each node has 4 booleans right, left, up, and down. These are set to all false if the node is a wall.
Each boolean represents whether or not Pacman can move in that direction.
For example, if right is true, that means Pacman can move right.

Albert:

5/23/19
Derek: Continued developing Tile class.
Each new tile creates an invisible square that will be displayed on the board. 
These squares represent the boundaries in which Pacman will be allowed to move.
Walls will be colored in with a blue color.
