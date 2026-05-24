PImage fondoCuatro;
//PFont
int posCuatrox = 300;
int posCuatroy = height;
float textoX = 100;
float textoY = 100;
float text_X = 150;

void animacionCuatro() {

  if (tiempoPantalla < 750) {
    background(142, 189, 247);
    image (fondoCuatro, posCuatrox, posCuatroy, 520, 520);
    posCuatrox = posCuatrox - 1;
    fill(0, 0, 0);
    textFont (textDescenalce);
    textAlign(CENTER);
    text(" Naomi enfermó gravemente por la radiación. \nCon tristeza, le confesó a Toshiro", textoX, textoY);
    text("que temía morir antes \nde lograr plegar las mil grullas de papel\nque la tradición exigía para sanar", text_X, 250);
    textoX = textoX + 0.60;
    text_X = text_X + 0.60;
  }
}
