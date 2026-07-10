//Tamara Merele C. TP2 IPMI

//                 > MAYOR
//                 <  MENOR
int tiempoPantalla = 0;
PFont textPrincipal;
PFont textNudo;
PFont textDescenalce;



void setup() {
  size(640, 480);
  fondoUno = loadImage("uno.png");
  fondoDos = loadImage("dos.png");
  fondoTres = loadImage("cuatro.jpg");
  fondoCuatro = loadImage("tres.png");
  fondoCinco =loadImage("cinco.png");
  fondoSeis =loadImage("siete.png");
  fondoBtn = loadImage("naomi.png");
  textPrincipal =loadFont("principio.vlw");
  textNudo  =loadFont("nudo.vlw");
  textDescenalce =loadFont("final.vlw");
}

void draw() {
  tiempoPantalla++;

  if (tiempoPantalla < 200) {
    animacionUno();
  } else if (tiempoPantalla < 350) {
    animacionDos();
  } else if (tiempoPantalla < 500) {
    animacionTres();
  } else if (tiempoPantalla < 750) {
    animacionCuatro();
  } else if (tiempoPantalla < 890) {
    animacionCinco();
  } else if (tiempoPantalla < 1200) {
    animacionSeis();
  } else if (tiempoPantalla > 1300) {
    botonReset();
  }

  //para ver la posicion de mouse xd
  println(mouseX + " - " + mouseY);
}
