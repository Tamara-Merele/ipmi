PImage fondoDos;
float opTexto = 0;
int posDosx = 20;
int posDosy = 20;
int yTexto = width;
int contadorDosX = 0;
void animacionDos() {

  if (tiempoPantalla < 350) {
    background(224, 140, 150);
    image (fondoDos, posDosx, posDosy, 600, 600);
    if (posUnoy < 200) {
      posDosy++;
    } else {
      contadorDosX++;
      if (contadorDosX > 900) {
        posDosx--;
      }
    }

    fill(0, 0, 0, opTexto);
    textFont(textPrincipal);
    textAlign(CENTER, CENTER);
    textSize(25);
    text("1945, Toshiro debió viajar temporalmente\ncon su familia.\nMientras se extrañaban,\nNaomi se quedó en la ciudad\nesperándolo y escribiéndole poemas.", height/2, yTexto);
    if (opTexto < 150) opTexto += 2;
  }
}
