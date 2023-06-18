// Camila Mendoza, legajo:92831/9
// Comision 1 
// tp 2

PImage imagen;
int cant=14;
int tam, xtam, ytam;
int ancho;
boolean indices;


void setup () {
  size (800, 400);
  background (0);
  imagen = loadImage ("arteoptico.jpeg");
  tam=width/cant;
    ancho = width/cant;

}

void draw () {
  image (imagen, 0, 0, 400, 400);
  translate (400,0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      noFill();
      stroke(150);
      strokeWeight(10);
      rect(i*ancho, j*ancho, ancho, ancho);
      fill(255);
      noStroke();

  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      rect (x*tam, y*tam, xtam, 10);
      if ((x+y)%1 ==0) {
        fill(255);
        circle (x*tam, y*tam, 20);
       } 
     }
   }
 }
 }
 }
