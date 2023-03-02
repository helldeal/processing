boolean isLeft, isRight, isUp, isDown, isForward, isBack,isBoost,isNoClip,isInfo,isStat; 

boolean noclip=false;
boolean Stat=false;
void keyPressed() {
  setMove(keyCode, true);
  setMove(key, true);
  if (key == CODED){
    if (keyCode == LEFT)  {
    }
    if (keyCode == RIGHT) {
    }
  }
   if (key == 'v'){
    noclip=!noclip;}
   if (keyCode == 99){
    Stat=!Stat;}
  }
 
void keyReleased() {
  setMove(keyCode, false);
  setMove(key, false);
}
 
boolean setMove(int k, boolean b) {
  switch (k) {
  case ' ':
    return isUp = b;
 
  case CONTROL:
    return isDown = b;
  case SHIFT:
    return isBoost = b;
 
  case 'q':
    return isLeft = b;
 
  case 'd':
    return isRight = b;
    
    case 'z':
    return isUp = b;
     case 's':
    return isDown = b;
    case 'v':
    return isNoClip = b;
    
    case TAB:
    return isInfo = b;
    
 
  default:
    return b;
  }
}
