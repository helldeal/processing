int[] nombres = new int[400];
void setup()
{
  size(800, 400);
  background(0);
  noStroke();
  fill(255);
  rectMode(CORNER);
  println("Tableau non trié :");
  for(int i = 0; i < nombres.length; i++)
  {
    nombres[i] = int(random(0, 400));
    print(nombres[i],"| ");
    rect(i*1,height,1,-nombres[i]);
  }
 nombres=sort(nombres);
  println("");
  println("Tableau trié :");
  for(int i = 0; i < nombres.length; i++)
  {
    print(nombres[i],"| ");
    rect(400+i*1,height,1,-nombres[i]);
  }
}
void draw()
{
}
