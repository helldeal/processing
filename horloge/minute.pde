void minutes() {
i= minute();  
  MUclean();
  if (i==0 || i==10 ||i==20||i==30||i==40||i==50){
    MU0();
  }
  else if (i==1||i==11||i==21||i==31||i==41||i==51){
    MU1();
  }
  else if (i==2||i==22||i==12||i==32||i==42||i==52){
    MU2();
  }
  else if (i==3||i==13||i==23||i==33||i==43||i==53){
    MU3();
  }
  else if (i==4||i==14||i==24||i==34||i==44||i==54){
    MU4();
  }
  else if (i==5||i==15||i==25||i==35||i==45||i==55){
    MU5();
  }
  else if (i==6||i==16||i==26||i==36||i==46||i==56){
    MU6();
  }
  else if (i==7||i==17||i==27||i==37||i==47||i==57){
    MU7();
  }
  else if (i==8||i==18||i==28||i==38||i==48||i==58){
    MU8();
  }
  else if (i==9||i==19||i==29||i==39||i==49||i==59){
    MU9();
  }
  


  MDclean();
  if (i<10){
    MD0();
  }
  else if (i<20){
    MD1();
  }
  else if (i<30){
    MD2();
  }
  else if (i<40){
    MD3();
  }
  else if (i<50){
    MD4();
  }
  else if (i<60){
    MD5();
  }
}
