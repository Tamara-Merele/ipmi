// AND = && => TRUE && TRUE => TRUE
//ESTA COPIAADO DE LA CLASE
PImage fondoBtn;
int posX = 94;
int posY = 423;
int ancho = 100;
int alto = 50;
color colorBoton = color(234, 180, 245); //violeta
color colorFondo = color(150, 110, 227); //rosa

void botonReset() {
  image(fondoBtn, 0, 0, width, height);
  textFont(textPrincipal);
  textSize(40);
  fill(255);
  text("Las Mil Grullas", 243, 85, width/2, height/2);
  fill(colorBoton);
  rect(posX, posY, ancho, alto);

  if (
    mouseX > posX && mouseX < posX + ancho &&
    mouseY > posY && mouseY < posY + alto) {
    colorBoton = color(150, 110, 227); //rosa fondo
  } else {
    colorBoton = color(234, 180, 245); //si no se cumple vuevle a su estado violeta
  }
}

void mouseClicked() {
  if (colorBoton == color(150, 110, 227)) {
    colorFondo = tiempoPantalla = 0;
  }
  //podía hacer un botonde restart de la pag 1
}
