// Camila Mendoza
// tp 1, comision 1 
// Legajo: 92831/9

int estado;


PImage imagen;
PImage imagen1; 
PImage imagen2;
PFont miFuente;
boolean resetButton = false;
float x;
float y = 0;
float speed = 2;


  void setup() {
  size(640, 480);
  estado = 0;
  x = 0; 
  imagen = loadImage("bora bora1.jpg");
  imagen1= loadImage ("bora bora2.jpg");
  imagen2= loadImage("borabora3.jpg"); 
  miFuente= loadFont("Verdana-Bold-48.vlw");
  
}
void draw() {
  background(38, 204, 224);
  textFont(miFuente);
  if (resetButton) {
    fill(200, 0, 0);
  } else {
    fill(255, 0, 0);
  }
  rect(10, 10, 80, 30);
  fill(255);
  textSize(16);
  text("Reiniciar", 13, 30);
  if ( estado==0 ) {
    fill(0);
    textSize(40);
    text("Bora Bora", 210, 230);
  
  } else if ( estado==1 ) {
    fill(0);
    textSize(30);
     image(imagen, 1, 1);
    fill(x*255/640);
    text("Bora Bora es una de las islas de Sotavento, de las\n islas de la Sociedad, en la Polinesia Francesa.", x, 200);

  x+=2;
    
    if ( x>width+100 ) {
     
      estado = 2;
      x = 700;
    }
  } else if ( estado==2 ) {
    
    fill(0);
    textSize(20);
    image(imagen1, 1, 1);
    text("Rodeada de motus con orillas de arena \n y una laguna turquesa protegida por un \n arrecife de coral, es conocida por el buceo", x, 250);
    x-=1;
    if (x<-100) {
      
      estado = 3;
      x = 0;
    }
  } else if ( estado==3 ) {
    
    fill(0);
    textSize(21);
    image(imagen2, 1 ,1);
    text("También es un popular complejo \n turístico lujoso donde algunos bungalós \n se ubican sobre pilotes en el agua.", 100, x);

    x+=1;
    
    if ( x> height+50) {
     
      estado = 0;
    }
  }
}

void mousePressed() {
  if (mouseX > 10 && mouseX < 90 && mouseY > 10 && mouseY < 40) {
    x = 0;
    y = 0;
    speed = 2;
    resetButton = false;
  } else {
    speed += 1;
  }


  if ( estado==0 ) {
    
    estado = 1;
    x=-300;
  } else if ( estado==1 ) {
    estado = 2;
  } else if ( estado==2 ) {
    estado = 3;
  } else if ( estado==3) {
    estado = 0;
  }
}
