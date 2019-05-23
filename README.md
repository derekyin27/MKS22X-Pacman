# Development Log
5/20/19-
Derek: Made repo, started testing on processing. Worked on moving the Pacman with basic WASD controls in the display.

Albert: Today I made an extension to the ghost class, pinkghost.pde, which basically displays a pink ghost that has the same properties as a ghost.

5/21/19
Derek: Today, I worked on the board and tested ghost movement.
Added a ghost class and tested random movement for the ghost. Couldn't figure out how to make ghost movement fluid.
Changed background for level to black.

Albert: Today, I made ghost a separate file and wrote the basic code for the ghost.pde file. I made it so that there is random movement, but it is still not perfect. I will perfect it later. Also, I will implement the actual ghost picture later. 

5/22/19
Derek: Today, I created a Tile class to start implementing a series of nodes. 
Each node has 4 booleans right, left, up, and down. These are set to all false if the node is a wall.
Each boolean represents whether or not Pacman can move in that direction.
For example, if right is true, that means Pacman can move right.

Albert: Today, I fixed the ghost code so that it allows for different colors, instead of being only black. Now, my pinkghost.pde works.

5/23/19
Derek: Continued developing Tile class.
Each new tile creates an invisible square that will be displayed on the board. 
These squares represent the boundaries in which Pacman will be allowed to move.
Walls will be colored in with a blue color.

Albert: Today, I drew and figured out how to draw the actual ghost using arcs and ellipses. It looks like the actual ghost in pacman now.
