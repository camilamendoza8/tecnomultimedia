//Camila Mendoza
//Legajo: 92831/9, comisión 3
// tp3
//Link del video: https://youtu.be/ij0klz2DMrQ



PImage[] impa = new PImage[15];
String[] txpa = new String[13];
String estado = "ini";

int p = 1;

void setup() {
  size(600, 600);

  for (int i = 1; i <= 14; i++)
    impa[i] = loadImage("imag" + i + ".jpg");

  // Arreglos de texto
  txpa[0] = "Creditos: Hecho por Camila Mendoza";
  txpa[1] = "HANSEL Y GRETEL";
  txpa[2] = "Hansel y Gretel son hermanos abandonados en \n el bosque por su madrastra malvada.";
  txpa[3] = "Encuentran una casa hecha de dulces \n y golosinas en medio del bosque.";
  txpa[4] = "La casa es propiedad de una malvada bruja \n que atrae a los niños para comérselos. ";
  txpa[5] = "La bruja atrapa a Hansel y lo encierra en \n una jaula para engordarlo.\n ¿Hansel lo ayuda?";
  txpa[6] = "Gretel idea un plan para salvar a su hermano empuja \n a la bruja al horno donde se quema.";
  txpa[7] = "Los hermanos encuentran tesoros en la casa \n de la bruja y se llevan todo.";
  txpa[8] = "Siguen un rastro de piedras y \n finalmente regresan a su hogar.";
  txpa[9] = "Se reencuentran con su padre y \n su madrastra había desaparecido \n F I N";
  txpa[10] = "Gretel se asusta y sale corriendo";
  txpa[11] = "La bruja se come a Hansel";
  txpa[12] = "Se quedan viviendo en la casa \n de golosinas, viven solos, juntos por siempre";
}

// Función que muestra la pantalla
void pantall(int nF, int nT) {
  textSize(20);
  fill(255);
  image(impa[nF], 0, 0, 600, 600);
  fill(0,0,255);
  text(txpa[nT], 100, 100);
}

// Botones
void dosBotones(String b1, String b2) {
  fill(200);
  ellipse(180, 500, 120, 60);
  ellipse(480, 500, 120, 60);
  fill(0);
  text(b1, 150, 510);
  text(b2, 450, 510);
}

// Distancia del mouse al botón
boolean dis(int px, int py) {
  boolean ok = false;

  if (dist(mouseX, mouseY, px, py) < 90)
    ok = true;

  return ok;
}

// De acuerdo al estado, muestra la pantalla correspondiente
void draw() {
  if (estado == "ini") {
    pantall(1, 1);
    dosBotones("creditos", "inicio");
  } else if (estado == "creditos") {
    pantall(14, 0);
  } else if (estado == "pan1") {
    pantall(2, 2);
  } else if (estado == "pan2") {
    pantall(3, 3);
  } else if (estado == "pan3") {
    pantall(4, 4);
  } else if (estado == "pan4") {
    pantall(5, 5);
    dosBotones("si", "no");
  } else if (estado == "pan5") {
    pantall(6, 6);
  } else if (estado == "pan6") {
    pantall(7, 7);
    dosBotones("quedarse", "irse");
 } else if (estado == "pan7") {
    pantall(8, 8);
  } else if (estado == "pan8") {
    pantall(9, 8);
  } else if (estado == "pan9") {
    pantall(8, 9);
  } else if (estado == "pan10") {
    pantall(13, 10);
  } else if (estado == "pan11") {
    pantall(11, 11);
  } else if (estado == "pan12") {
    pantall(12, 12);
  }
}

// evento del mouse, cada vez que hago clic cambio de estado
void mousePressed() {
  if (estado == "ini") {
    if (dis(240, 530))
      estado = "creditos";
    else if (dis(540, 530))
      estado = "pan1";
  } else if (estado == "creditos") {
    estado = "ini";
  } else if (estado == "pan1") {
    estado = "pan2";
  } else if (estado == "pan2") {
    estado = "pan3";
  } else if (estado == "pan3") {
    if (dis(240, 530))
      estado = "pan6";
    else if (dis(540, 530))
      estado = "pan4";
  } else if (estado == "pan4") {
    if (dis(240, 530))
      estado = "pan6";
    else if (dis(540, 530))
      estado = "pan10";
  }else if (estado== "pan10") {
    estado= "pan11";
    } else if (estado == "pan11") {
    estado = "ini";
  } else if (estado == "pan5") {
    estado = "pan6";
  } else if (estado == "pan6") {
    if (dis(240, 530))
      estado = "pan12";
    else if (dis(540, 530))
      estado = "pan8";
  }else if (estado == "pan12"){
    estado = "ini";
  } else if (estado == "pan7") {
    estado = "ini";
  } else if (estado == "pan8") {
    estado = "pan9";
  } else if (estado == "pan9") {
    estado= "ini";
 
  
  }
}
