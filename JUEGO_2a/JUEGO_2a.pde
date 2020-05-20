import processing.sound.*;
import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.collision.shapes.*;

Box2DProcessing box2d;
AudioSample cancion;

PImage img, img2, img3, img4, j1, j2, bc;
PFont T;
int J1;
int J2;
int Turno;
pantalla Prueba ;
PersonajeNuevo p1, p11, p12;
Personaje2 p2, p21, p22;
ArrayList<ParticleSystem> systems;

void setup () {
  size(600, 800);
   box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
  systems = new ArrayList<ParticleSystem>();
  img = loadImage("dragon-age-origins.jpg");
  img2 = loadImage("portada2.jpg");
  bc = loadImage("5.jpg");
  j1 = loadImage("ornstein4.png");
  j2 = loadImage("artorias2.png");
  img3 = loadImage("4.jpg");
  img4 = loadImage("inquisition-combate.jpg");
  cancion = new SoundFile(this, "Guardians at the Gate.mp3");
  cancion.play();

  //jugador 2
  p12= new PersonajeNuevo(500, 450);
  p22= new Personaje2 (450, 350);

  Prueba= new pantalla();
  T=loadFont("TrajanPro-Bold-15.vlw");//cargar fuente
}
void draw () {
  Prueba.display();
   box2d.step();

  //image(img, 0, 0);
}
