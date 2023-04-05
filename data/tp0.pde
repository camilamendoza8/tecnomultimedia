// Camila Mendoza
// tp0 comisión 1
PImage paisaje;
 size(800,400);
 background(87, 153, 232);
 fill( 52, 65, 95);
 triangle(600, 160, 50, 380, 920, 258); 
 fill( 170, 184, 219);
 triangle(600, 160, 500, 200, 732, 200);
 
 fill(135, 138, 147);
  rect( 400, 265, 800, 200);
  noFill();
  
  fill (197, 203, 219);
 rect(400, 320, 800, 100);
 
 fill( 72, 44,7);
 quad( 715 , 300, 630, 325, 800, 325, 800, 300);
 
 fill(124, 6, 8);
 triangle(800, 320, 630, 400, 800, 800);
 
 line( 780, 10, 800, 15); 
 
 
 
paisaje=loadImage ("paisajetp0.jpg");
image(paisaje, 0, 0, 400, 400);
