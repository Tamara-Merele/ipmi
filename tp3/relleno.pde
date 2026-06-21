//elipses de arriba
void rellenoUno() {
 for (int i = 0; i < 10; i++) {
    int posX = 419 + (i * 40);
    frameRate(5);
 fill(random(255), random(255), random(255));
    ellipse(posX, 20, 30, 30);
    ellipse(posX, 60, 30, 30);
  }
}
//rect de abajo
void rellenoAbajo() {
  for (int c = 0; c < 10; c++) {
    int posiC = 405 + (c * 40);
    rect(posiC, 325, 30, 30);
    rect(posiC, 365, 30, 30);
  }
}
//quizas pueda hacer que la pos Y la aumente en vez de hacer escribir todo el dibujo y ponerle la nueva pos Y (espero entenderme porfavor)
void rellenoCentro() {
  for (int rellenoDentro = 0; rellenoDentro < 6; rellenoDentro++) {
    int posCentro = 485 + (rellenoDentro * 40);
    fill(255,3,184);
    rect(posCentro, 85, 30, 30);
     fill(255,125,3);
    rect(posCentro, 125, 30, 30);
     fill(255,8,8);
    rect(posCentro, 165, 30, 30);
    fill(8,255,22);
    ellipse(posCentro+15, 301, 30, 30);
    fill(255,16,8);
    ellipse(posCentro+15, 261, 30, 30);
    fill(0,250,235);
    ellipse(posCentro+15, 221, 30, 30);
  }
}

//Un ciclo for para hacer relleno de grilla en los bordes de ambos lados
void ambosBordes() {
  int cantX = 2;
  int cantY = 3;
  int inicioX = 406;
  int inicioY = 205;
  for (int posX = 0; posX < cantX; posX++) {
    for (int posY = 0; posY < cantY; posY++) {
      int posicionX_Real = (posX * 40) + inicioX;
      int posicionY_Real = (posY * 40) + inicioY;
      //lado izquierdo  
      rect(posicionX_Real, posicionY_Real, 30, 30);
      ellipse(posicionX_Real+13, posicionY_Real-105, 30, 30);
      //lado derecho
      frameRate(5);
       fill(random(225), random(170), random(255));
      rect(posicionX_Real+319, posicionY_Real, 30, 30);
    ellipse(posicionX_Real+334, posicionY_Real-105, 30, 30);
    }
  }}
