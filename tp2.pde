// Camila Mendoza, legajo:92831/9
// Comision 1 
// tp 2
// link al video: https://youtu.be/eUZ5lIVUMgQ


PImage imagen;
int cant=14;
int tam, xtam, ytam;
int ancho;
boolean efx;


void setup () {
  size (800, 400);
  background (0);
  imagen = loadImage ("arteoptico.jpeg");
  tam=width/cant;
    ancho = width/cant;

}

//
float colora(int y){
  float r=0;
  //
  r = map(y,0,400,50,255);
 
 
  return r;
}  
//
 void efe(float xt){
   
    translate(xt,0);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      noFill();
      stroke(150);
      strokeWeight(10);
      rect(i*ancho, j*ancho, ancho, ancho);
         fill(255);
      noStroke();
//
  for (int x=0; x<cant; x++) {
    for (int y=0; y<cant; y++) {
      rect (x*tam, y*tam, xtam, 10);
      if ((x+y)%1 ==0) {
        if(efx)
          fill(colora(mouseY),100,0);
           else
        fill(255);
        circle (x*tam, y*tam, 20);
       }
     }
   }
 }
 }
   
   
   
   
 }




void draw () {
 image (imagen, 0, 0, 400, 400);
 efe(400);
 }
 
 
//
void mousePressed(){
 
  if(efx)
   efx=false;
    else
     efx=true;
 
}  

 
