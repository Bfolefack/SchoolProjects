public class Scoreboard
{
  /*INSTANCE VARIABLES*/
  int scoreLeft;
  int scoreRight;
  /*INSTANCE VARIABLES*/

  /*CONSTRUCTOR*/
  public Scoreboard()
  {
    scoreLeft =0 ;
    scoreRight = 0;
  }
  /*CONSTRUCTOR*/

  /*METHODS*/
  //increases the score of the paddle on the left
  public void increaseLeftScore()
  {
    scoreLeft++;
  }

  //increases the score of the paddle on the right
  public void increaseRightScore()
  {
    scoreRight++;
  }

  //make the score appear on the screen
  public void showScore()
  {
    fill(255);
    textSize(40);
    textAlign(CENTER);
    text(scoreRight, width/2+30, 30); // Right side score
    text(scoreLeft, width/2-30, 30); // Left side score
  }
  /*METHODS*/

}
