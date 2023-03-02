String[] lines;
int     score;
String scoreList;
 
void setup()
{
  size(400, 400);
  lines = loadStrings("highScore.txt");
}
 
void draw()
{
  background(0);
  fill(255);
  text("there are " + lines.length + " lines", 20, 20);
  text("Current score: " + score, 20, 40);
  for (int i = 0; i < lines.length; i++)
  {
    text(lines[i], 20, 60 + 35*i);
  }
}
 
void keyPressed()
{
  if (keyCode==UP)
  {
    if(lines.length<1)
    {
      lines=append(lines,str(score));
    }
    else
    {
      if(parseInt(lines[lines.length-1])<score)
      {
        lines[lines.length-1]=str(score);
        for(int i=lines.length-1; i>0; i--)
        {
          if(parseInt(lines[i])>parseInt(lines[i-1]))
          {
            String setScoreLower=lines[i-1];
            lines[i-1]=lines[i];
            lines[i]=setScoreLower;
          }
        }
      }
      scoreList="";
      for (int i = 0; i < lines.length; i++)
      {
        scoreList+=lines[i]+" ";
      }
      saveStrings("highScore.txt",lines);
    }
 
    sort(lines);
  }
 
  println(lines);
  println("scoreList  "+scoreList);
}
 
void mousePressed()
{
  if (mouseButton==LEFT)
  {
    score+=1;
  }
  if (mouseButton==RIGHT)
  {
    score-=25;
  }
}
