void heure() {
i= hour(); 
  HUclean();
  if (i==0 || i==10 ||i==20){
    HU0();
  }
  else if (i==1||i==11||i==21){
    HU1();
  }
  else if (i==2||i==22||i==12){
    HU2();
  }
  else if (i==3||i==13||i==23){
    HU3();
  }
  else if (i==4||i==14||i==24){
    HU4();
  }
  else if (i==5||i==15){
    HU5();
  }
  else if (i==6 || i==16){
    HU6();
  }
  else if (i==7||i==17){
    HU7();
  }
  else if (i==8||i==18){
    HU8();
  }
  else if (i==9||i==19){
    HU9();
  }
  


  HDclean();
  if (i<10){
    HD0();
  }
  else if (i<20){
    HD1();
  }
  else if (i<30){
    HD2();
  }
}
