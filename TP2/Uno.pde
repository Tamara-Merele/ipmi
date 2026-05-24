PImage fondoUno;
float opacidadTexto =0;
int posUnox = 0;
int posUnoy = 8;
int contadorPosX = 0;


void animacionUno() {

  background(252, 209, 214);
  image(fondoUno, posUnox, posUnoy, 500, 500);
  if (posUnox < 200) {
    posUnox++;
  } else {
    contadorPosX++;
    if (contadorPosX > 900) {
      posUnoy--;
    }
  }

  if (tiempoPantalla < 200) {
    textFont(textPrincipal);
    textSize(25);
    fill(0, 0, 0, opacidadTexto);
    textAlign(CENTER, CENTER);
    textSize(25  );
    text("Naomi y Toshiro eran dos niños de Hiroshima \nque tenían una hermosa amistad \ny un tierno primer amor", 22, 24, width/2, height/2);
    if (opacidadTexto < 255) {
      opacidadTexto += 2;
    }
  }
}
