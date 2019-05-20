public class PinkGhost extends Ghost {

  public PinkGhost() {
    c = color(255, 102, 102);
    ghostY = 310;
    ghostX = 350;

  }

  //go back to middle
  public void revive(){
    c = color(255, 102, 102);
  }


}
