class pantalla {
  int P;
  int vida1=250;
  int vida2=175;
  int turno =0;
  float dt;
  pantalla(){
 
  }
  void P1 () {
        textFont(T);
    image(img2, 0, 0);
       dt+=0.01;
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*255);//noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
    fill(100, 200, 0);
    // rect(-0,400,500,500);
    fill(100, 150, 200);
    // textFont(T);
        fill(155,0,0);
    text ("Una Batalla sin fin", 0, 700);
    text ("Presione la pantalla y  Q", 0, 725);
    text ("J2:usas la z y x", 0, 750);
    text ("J1:usas la  M y n", 0, 780);
    if (key=='Q'||key=='q') {
      P=1;
    }
  }
  void P2 () {
    fill(random(255), random(255), random(255));
    image(img, 0, 0);
    //rect(0,0,500,100);
      dt+=0.01;
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*150,noise(i*0.01+dt*1,j*0.01+1,dt)*255);//noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
  fill(random(255),random(255),random(255));
    text ("presiona E", 0, 790);
    fill(155, 0, 0);
    text ("El Reyno esta en guerra, los caballeros fuimos desplegados ", 0, 710);
    text( "al rededor del reyno para defendernos del ataque", 0, 730);
    text("muchos estamos preparados pero no los demas no creo  ", 0, 750);
    text("nos dieran ordenes tan directas y de caracter urgente", 0, 770);
    fill(250, 250, 250);
    //rect(0,400,500,500);
    if (vida1<=0||vida2<=0) {
      vida1=100;
      vida2=100;
    }



    if (key=='E'||key=='e') {
      P=2;
    }

    //if (vida1<=0||vida2<=0) {
    //  vida1=10;
    //  vida2= 10;
    //}
  }
  void P3 () {
    image(img3, 0, 0);
     dt+=0.01;
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*255);//noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
    fill(0, 255, 100);
    text ("Los caballeros imperiales somos lo mejor de lo mejor", 0, 710);
    text("respondemos solo ante el rey", 0, 730);
    text("piensan varios que es otro reino el que ataca", 0, 750);
    text("dicen que son caballeros, pero parecen como Dioses", 0, 770);
    fill(random(255), random(255), random(255));
    text ("presiona D", 0, 780);

    if (key=='D'||key=='d') {
      P=3;
    }
  }
  void P4() {
    image(bc, 0, 0);
     dt+=0.01;
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*255);//noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
    for (ParticleSystem system: systems) {
    system.run();
    int n = (int) random(0,2);
    system.addParticles(n);
    }
     systems.add(new ParticleSystem(0, new PVector(random(600),random(0,-10))));
     fill(random(255),random(255),random(255));
    text ("Defiende", 250, 65);
    //if (key=='R'||key=='r'){P=3;}
    if ((key=='Z'||key=='z')&&(Turno==0)) {
      vida1-=25;
      Turno=1;
    }
    if ((key=='X'||key=='x')&&(Turno==0)) {
      vida1-=40;
      Turno=1;
    }
    if ((key=='M'||key=='m')&&(Turno==1)) {
      vida2-=15;
      Turno=0;
    }
    if ((key=='N'||key=='n')&&(Turno==1)) {
      vida2-=30;
      Turno=0;
    }
    noStroke();
    fill(0, 180, 200);
    //fill(0,100,255);
    rect(0, 50, vida1*1, 25);
    fill(0, 150, 255);
    rect(400, 50, vida2*1, 25);

    if (vida1<=0||vida2<=0) {
      P=4;
    }

    p12.display();
    p22.display();
  }
  void P5() {
    // cancion.pause();
    image(img4, 0, 0);
    dt+=0.01;
  noStroke();
  //ellipse(constrain(mouseX,100,300),mouseY,30,30);
  for(int i= 0;i<width;i+=10){
    for(int j = 0; j<height;j+=10){
      fill(noise(i*0.01+dt,j*0.01,dt)*0,noise(i*0.01+dt*1,j*0.01+1,dt)*255);//noise(i*0.01+dt*2,j*0.01*2,dt)*255);
      rect(i,j,10,10);
    }
  }
  fill(255,0,0);
    text ("Fin del juego", 50, 50);
    text ("Presione T para seguir", 0, 300);
    text ("El reyno esta en problemas, no puedo caer aqui, necesito seguir ", 0, 350);
    if (vida2<=0) { 
      text("Jugador1 gano", 0, 250);
    } else {
      if (vida1<=0) { 
        text("jugador2 gano", 0, 250);
      }
    }
    if (key=='T'||key=='t') {
      P=1;
    }
  }
  void display () {
    switch (P) {
    case 0:
      P1();
      break;
    case 1:
      P2();
      break;
    case 2:
      P3();
      break;
    case 3:
      P4();
      break; 
    case 4:
      P5();
      break;
    }
  }
  void teclas() {
    keyPressed();
    if ((key=='z'||key=='Z')&& turno==1) {
      vida1-=1;
    }
    if ((key=='m'||key=='M')&& turno==2) {
      vida2-=1;
    }
  }
}
