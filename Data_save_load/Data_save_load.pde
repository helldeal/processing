static final String CONFIG_FILE = "config.dat";
 
String name;
int lives, hp, level;
 
void setup() {
  size(800, 600, JAVA2D);
  loadStats();
}
 void draw(){
   saveStats();
   if (lives==1)println("oui");
 }
void loadStats() {
  String[] lines = loadStrings(CONFIG_FILE);
  println(lines);
 
  name = lines[0];
  lives = int(lines[1]);
  hp = int(lines[2]);
  level = int(lines[3]);
}
 
void saveStats() {
  String[] lines = {
    name, str(lives), str(hp), str(level)
    };
    println(lines);
 
  saveStrings(dataFile(CONFIG_FILE), lines);
}
