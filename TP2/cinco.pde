PImage fondoCinco;
//PFont
int posCincox = 0;
int posCincoy = 0;
float textY = 80;
float text_Y= 200;
void animacionCinco() {

  if (tiempoPantalla < 890) {
    background(17, 73, 144);
    image (fondoCinco, posCincox, posCincoy, width, height);
    fill(255, 255, 255);
    textFont (textDescenalce);
    textAlign(CENTER);
    text("Desesperado por salvarla,\nToshiro decidió completar la tarea de origami por ella.", textY, 100);
    text("Pasó toda la noche\ndoblando en secreto cualquier trozo de papel \nque pudo encontrar", text_Y, 150);
    textY = textY + 1.2;
    text_Y = text_Y + 0.90;
  }
}
