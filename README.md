# Description
We recreated the game Pacman using Java and Processing. We've implemented most of its features, with 3 ghosts on the map. To control pacman, use WASD, with W going up, A going left, S going down, and D going right. You can consume the power-up and kill the ghosts. The goal of the game is to eat all of the pellets before the ghosts kill you. Have fun!

# Development Log
5/20/19

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

Albert: Today, I drew and figured out how to draw the actual ghost using arcs and ellipses. It looks like the actual ghost in pacman now. There are eyes and the shape is very detailed.

5/27/19

Derek: Attempted to start making map with corridors and Walls.
However, pacman movement is still bugged and he does not move when an input is given.
The issue lies within the 2d array used to store each node, and whether or not a node is a wall or not can be accessed using the array. however, coupled with the spawn point of pacman and his movement numbers, this messes with the array and accessing values in that array.

Albert: Today, I made lastmove workable, and now we just have to implement it in World.
I also fixed the ghost movement because there were some bugs. It would just stay in place, but now it actually moves. 

5/29/19

Derek: Created new grid, new pacman movement mechanics.
Now, pacman is locked to the grid and cannot move outside the boundaries of the squares.
Now, a boolean 2d array is used to access specific boxes and see whether or not it is a wall. 

Albert: Today, I removed repetitive code and fixed the ghost so that it can actually move.
Also, I tweaked the shape of the ghost so that it looks more like a ghost.
Also, I took away probability in the ghost's movement because it caused errors.

5/31/19

Albert: Today, I made the ghost movement a lot smoother, and fixed the super random movement the ghost would do.
It would always have spasms and jump everywhere, but now it's more controlled.
Now, the ghost stays on the tiles.

6/1/9

Albert: Today, I made the ghost go slower than pacman so that it doesn't make the game too hard. 
I also fixed an error that stopped the ghost's movement.

6/2/19

Albert: I made it so that the ghost follows pacman under certain circumstances (same y value). 
I also made the game less laggy because I changed the delay times. 
Lastly, I created a pellet class and created the foundation.

6/3/19

Derek: Finally completed collision.
Each tile was stored into a 2d boolean array and every time that pacman advances a square, it will check for collision.
Albert finished pellet interaction, but when tweaking collision, the interaction was disrupted and now Pacman does not consume the pellets properly. We are looking for a fix.

Albert: Today, I worked on the pellet class and made it so that Pacman can consume it.
I also fixed some errors that conflicted with the walls and pellets.

6/4/19

Albert: Today, I fixed the code so that pacman consumes the pellets properly. 
I incorporated losing/winning and it resets the map if you do so.
I also finally made the ghost's random movement work and I also made it so that the ghost doesn't go into the wall. 
I also made a quick fix which created arrayoutofbound exceptions.
I also incorporated colors for the ghost and I added another ghost.

Derek: Today, I changed the map.
I edited the map so that it spells out CS and there is a bit a manuverability for pacman to move around the map.

6/8/19

Derek: We got an extension so I added an external map and worked on the pacman's movement.

Albert: Today, I made a powerup that allows the pacman to kill the ghost in a certain amount of time. 
Also, I fixed the ghost's choppy movement and it's a lot smoother now.

6/9/19

Derek: Today, I scrapped the external map and created a map myself that looks exactly like the one in pacman.

Albert: Today, I added another ghost and made fixed all the errors from the new map.
