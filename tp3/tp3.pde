//Tamara Merele 
//https://youtu.be/KQPQCdD3lSY

PImage laImagen;
int cant = 10;
int tam;
int lado = 50;
int estadodeEvento = 0;
boolean teclado = false; //con letra T

void setup() {
  size(800, 400);
  laImagen = loadImage("opArt.jpg");
  tam = (width/2)/cant;
}

void draw() {
  background(200);
  image(laImagen, 0, 0, 400, 400);
  noStroke();
  for (int x = 0; x < cant; x++) {
for (int y = 0; y < cant; y++) {
fill(calcularColor(x, y));
 rect(x * tam + 400, y * tam, tam, tam);
    }
  }
  rellenoUno();
  rellenoAbajo();
  ambosBordes();
  rellenoCentro();
  animaElip();

  
if (teclado == true) {
    centro();
    circuloCentro();
  } else {
    if (estadodeEvento == 1) {
      centro();
    } else if (estadodeEvento == 2) {
      circuloCentro();
    }
  }
}
void mouseClicked() {
  // El click derecho va a ser como una suerte de reiniciar
  if (mouseButton == RIGHT) { 
 estadodeEvento = 3;
  } else {
 if (mouseY < height / 2) {
estadodeEvento = 1; 
    } else {
estadodeEvento = 2; 
    }
  }
}

void keyPressed() {
  if (key == 't' || key == 'T') {      
    teclado =!teclado; //Queria hacer el  !teclado swich de flase pero cada vez que toco cambia de estado :p.  
  }
}
//calculo de degrade de colores xd
color calcularColor(int posicionX, int posicionY) {
  
  float r = posicionX * 55;
  float g = posicionY * 25;
  float b = (posicionX + posicionY) * 200;

  return color(r, g, b);

}
