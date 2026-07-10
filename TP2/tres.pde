PImage fondoTres;
//PFont
int posTresx = 0;
int posTresy = 0;
float tamaImagen = 400;
float maximoTama = 800;
float texto_X =200;
float texto_Y = height*2 ;

void animacionTres() {

  if (tiempoPantalla < 500) {
    background(0);
    image (fondoTres, posTresx, posTresy, tamaImagen, tamaImagen);
    if (tamaImagen < maximoTama) {
      tamaImagen += 3;
    }
    fill(0, 0, 0);
    textFont(textNudo);
    textSize(20);
    text("6 de agosto, \nun avión arrojó la bomba atómica \nque destruyó por completo la ciudad de Hiroshima.\nEste terrible hecho cambió la vida de ambos \npara siempre.", texto_X, texto_Y);

    texto_X = texto_X + 0.90;
  }
}
