String[] lines;
String[] lines1;
String[] lines2;
String scoreList;
  PImage back1;
  PImage back2;
  PImage back3;
  PImage back4;
void loaddata(){
  lines = loadStrings("highScore.txt");
  lines1 = loadStrings("decor.txt");
  back=int(lines1[0]);
  lines2 = loadStrings("skin.txt");
  skin=int(lines2[0]);
  back1 = loadImage("1.jpg");
  back2 = loadImage("2.jpg");
  back3 = loadImage("3.jpg");
  back4 = loadImage("4.jpg");
  back1.resize(width, height);
  back2.resize(width, height);
  back3.resize(width, height);
  back4.resize(width, height);
  
}
void cache1(){ 
    
  //score
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
    
    //background
    print(back+" ");
    lines1[0]=str(back);
      saveStrings("decor.txt",lines1);
    //skin
     println(skin);
    lines2[0]=str(skin);
      saveStrings("skin.txt",lines2);
    
  
    
 
    
  }
