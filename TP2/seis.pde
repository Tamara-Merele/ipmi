PImage fondoSeis;
//PFont
int posSeisx =10;
int posSeisy = 10;
float text_yy = 200;
int contadorSeisX = 0;
void animacionSeis() {

  if (tiempoPantalla <1200) {
    background(185, 149, 122);
    image (fondoSeis, posSeisx, posSeisy, 600, 500);

    if (posSeisy < 200) {
      posSeisy++;
    } else {
      contadorSeisX++;
      if (contadorSeisX > 900) {
        posDosx--;
      }
    }
    fill(0);
    textFont (textDescenalce);
    text("Aunque Naomi falleció.\naquellas grullas se convirtieron \nen un símbolo mundial de paz.\n Toshiro siguió plegándolas toda su vida \npara mantener vivo \nel recuerdo de su primer amor", width/2, text_yy);
    text_yy = text_yy - 0.60;
  }
}
