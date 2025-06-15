//readme: Merele Tamara. Comi 5 link youtube: https://youtu.be/YZz0uNhoiGk
//OP-ART Mario Ballaco TENSIONI (1967)
PImage tensioni;
int cant = 12;      // La cantidad de cuadritos de largo y ancho. en 12 queda mejor, pero la imagen son 7por7
int taman;          // Para el taman de los cuadraditos
int btnAncho = 50;  // Ancho  indicacion del boton de reinicio
int btnAlto = 50;   // Alto
int btnX = 601 - btnAncho / 2;  // indicacion del boton de reinicio
int btnY = 195 - btnAlto / 2;
int tiempoCambioTexto = 0;
int duracionTexto = 2000; // 2''
String textoBoton = "Reinicio";  // Var para confirmar que se hace la acción de reeinicio

void setup() {
  size(800, 400);//sketch
  tensioni = loadImage("tensioni.jpeg");
  taman = (width - 400) / cant;  // AJUSTE EL TAMAÑO PARA DIBUJAR la grilla A LA DERECHA( tamaño de los cuadraditos se ajusto)
}

void draw() {
  background(0);
  image(tensioni, 0, 0, 400, 400); // Imagen en la izquierda como tp1 (coordenas 400,400)
  //MOMENTO DIBUJAR GRILLA
  for (int j = 0; j < cant; j++) { //ciclofor anidado para hacer la grilla
    for (int i = 0; i < cant; i++) {

      // Usamos map y movemos (x = 400)
      float x = map(i, 0, cant, 400, width);  // a partir de 400 map ej del manual: (valor, minimo original, max original, minimo nuevo, max nuevo) transformar las posiciones
      float y = j * taman;  //eje

      // MOMENTO EVENTO MOUSE- calculando elcentro del cuadrado
      float centroX = x + taman / 2;
      float centroY = y + taman / 2;
      float d = dist(mouseX, mouseY, centroX, centroY);  // Distancia del mouse al centro cuadrado
      // con un if agrandado si el mouse está cerca se redimensiona "re Size a 1.5" si no queda igual
      float reSize;
      if (d < taman) {
        reSize = 1.5;
      } else {
        reSize = 1.0;
      }
      float tamActual = taman * reSize;

      // hice una parte del cuadrado, para que de ilusion de que se agranda la figura
      fill(0);
      stroke(255);
      rectMode(CENTER); //rectángulo crezca desde elcentro, no desde la esquina.
      rect(centroX, centroY, tamActual, tamActual); //hace el rectang poniendo el centro como referencia.
     rectMode(CORNER); // volvemos al modo normal, evita que los siguientes cuadrados se dibujen desde el centrocomo el btn del medio

      //dibujamos y pintamos triangulos, para dar el efecto visual
      fill(255);
      if (j < cant / 2) { // es la cantidad / 2 xq los que estan en j= Y se dibujan de una forma
        // ARRIBA esquinas superiores del triangulo
        if (i < cant / 2) {
          triangle(x + taman, y, x + taman, y + taman, x, y); // Esquina  izq
        } else {
          triangle(x, y, x + taman, y, x, y + taman); // Esquina  der.
        }
      } else {
        // ABAJO inferiores
        if (i < cant / 2) { // es la cantidad / 2 xq los que estan en i=X se dibujan de una forma
          triangle(x + taman, y + taman, x + taman, y, x, y + taman); // izq
        } else {
          triangle(x, y + taman, x, y, x + taman, y + taman); // der
        }

        // INTERACCION CON EL MOUSE, PODRÍA SER UN BTN. depende que boton de mouse toco pinta de un color una sección
        if (mouseButton == LEFT) {
          fill(255, 0, 0); //rojo
          triangle(x + taman, y, x + taman, y + taman, x, y); // Esquina  izq
        } else if (mouseButton == RIGHT) {
          fill(255, 255, 0); // amarillo
          triangle(x, y + taman, x, y, x + taman, y + taman); //triang izq abajo
        } else {
          fill(0); //Si no pasa las anterirores permanece blanco.
        }
      }
    }
  }

  // despues de 2 segundos pone "reinicio"
  if (textoBoton.equals("Reiniciado!") && millis() - tiempoCambioTexto > duracionTexto) {
    textoBoton = "Reinicio";
  }

  //para ver coordenas como el tp 1 (? tengo que borrarlo
  //fill(255);
// text(400 + mouseX + " - " + mouseY, mouseX, mouseY);
//  println(mouseX + " - " + mouseY);

  //  botón de reinicio
  fill(0);
  rect(btnX, btnY, btnAncho, btnAlto); // declare los parametros en el int
  fill(255);
  textAlign(CENTER, CENTER);
  text(textoBoton, btnX + btnAncho / 2, btnY + btnAlto / 2);
}

void mouseClicked() {
  if (mouseX > btnX && mouseX < btnX + btnAncho && mouseY > btnY && mouseY < btnY + btnAlto) { //Mientras este dentro del cuadrado se puede precionar y ejecutar el reiniciar(Si la posición del mouse en el eje X mayor que la coordenada btn X, Y(and) la posición del mouse en el eje btnX + btn Ancho  es menor que la coordenada....) 
    resetVariables();  // Reiniciar las variables como dice la consigna
    textoBoton = "Reiniciado!";  // Cambia el texto
    tiempoCambioTexto = millis();  // momento del clic. (vi que se podia usar en las sugerencias de entrega)
  }
}
// reinicia variables :D a las mismas que
void resetVariables() {
  cant = 12;  // Restablecer cantidad de cuadrados
  taman = (width - 400) / cant;  // Restablecer tamaño de los cuadrados
  println("Botón de reinicio presionado. Variables reiniciadas.");  
}
