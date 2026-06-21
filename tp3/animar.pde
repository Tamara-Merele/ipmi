
void animaElip() {

  for (int y = 0; y <= height; y = y + 40) {
    for (int x = 400; x <= 800; x = x + 40) {
//dis calcula la distancia 
      float distancia = dist(x, y, mouseX, mouseY);
      // Cuanto mas cerca del mouse, mas grande el circulo.
     
      float tam = map(distancia, 25, 200, 10, 0);
      if (mouseY < height / 2) {
        fill(10,255,237);//
        } else {
          fill(10,36,255); //hacer azul para que se eva más
      }
      
      ellipse(x, y, tam, tam);
    }
  }
}

 float angulo = 0;
 void centro(){
   
  for (int y = 0; y < 105; y = y + 40) {
    for (int x = 0; x < 6; x = x +1) {
      pushMatrix();
      translate((x * 40) + 504, y + 105);
    
      rotate(radians(angulo));
      //colores -random- en una cierta paleta de colores
      fill(random(31), random(242), random(0));
      rect(-22, -15, 30, 30);
      popMatrix();

}
  }
  angulo = angulo +40;
}

void circuloCentro() {
  for (int circuloDentro = 0; circuloDentro < 6; circuloDentro++) {
    int posCent = 485 + (circuloDentro * 40);
   fill(254, 255, 10);
   ellipse(posCent+15, 220, random(30),30);
   
ellipse(posCent+15, 260, random(30),30);

ellipse(posCent+15, 300, random(30),30);
   

  }
}
