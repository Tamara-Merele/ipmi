//README Tamara Merele C. TP1 IPMI
PImage miImagen;

void setup() {
  size(800, 400);
  miImagen = loadImage("partenonAtena.png");
}

void draw() {
  background(50, 70, 130);
  image(miImagen, 0, 0, 400, 400);
  //boceto

  //FONDO PARTENON
  fill(105, 61, 32);
  noStroke();
  quad(496, 203, 496, 360, 708, 360, 708, 184);
  //luz DENTRO
  fill(225, 200, 170);
  noStroke();
  quad(556, 220, 642, 210, 639, 247, 554, 253);
  rect(638, 336, 15, 25);
  rect(630, 346, 20, 20);
  //
  fill(62, 88, 141);
  rect(592, 263, 15, 10);
  rect(599, 272, 10, 10);
  rect(520, 210, 15, 10);
  rect(520, 218, 10, 15);
  rect(520, 218, 6, 130);

  //COLUMNAS
  fill(194, 174, 154);
  noStroke();
  rect(475, 203, 15, 157);
  rect(713, 177, 15, 183);
  rect(500, 198, 20, 165);
  rect(534, 195, 20, 165);
  rect(571, 190, 20, 172);
  rect(607, 189, 20, 172);
  rect(644, 183, 20, 178);
  rect(679, 182, 20, 180);
  rect(679, 182, 20, 170);

  //ANTES DEL TECHO
  fill(156, 138, 94);
  noStroke();
  quad(470, 170, 470, 186, 728, 161, 728, 146);
  fill(181, 161, 109);
  quad(470, 188, 475, 205, 729, 178, 728, 161);

  //TECHITO abse de triangulos
  noStroke();
  triangle(593, 121, 460, 174, 593, 160);
  triangle(593, 160, 595, 130, 735, 145); //der
  line(728, 135, 658, 118);
  stroke( 152, 129, 100);
  strokeWeight(5);
  line(471, 186, 726, 158);
  fill(152, 129, 100);
  triangle(727, 142, 705, 132, 694, 140);//cambiar color
  rect(654, 130, 5, 4);//cambiar color
  quad(534, 145, 555, 138, 554, 132, 533, 139);
    triangle(469,168,498,158,493,151);
  strokeWeight(2);
  line(457, 173, 738, 143);
  line(457, 173, 488, 170);

  //BASE PIEDRAS
  //rect(X,Y,Largo,ancho);
  fill(181, 161, 109);
  noStroke();
  rect (400, 360, 400, 40);
  //hacer cuadrados como escalones con color cielo xd
  fill(50, 70, 130);
  rect(400, 358, 50, 15);
  rect(400, 368, 15, 20);
  rect(782, 356, 40, 20);
  rect(774, 352, 50, 15);
  fill(130, 112, 84);
  rect(471, 368, 90, 150);
  //PIEDRAS EN BASE
  fill(144, 137, 127);
  stroke(255);
  strokeWeight(0.1);
  rect(408, 384, 40, 50);
  rect(423, 373, 30, 30);
  rect(450, 379, 20, 50);
  rect(542, 382, 30, 60);
  rect(579, 380, 30, 60);
  rect(608, 369, 20, 35);
  rect(610, 383, 40, 60);
  rect(679, 379, 40, 40);
  rect(714, 379, 40, 60);
  rect(746, 389, 40, 60);
  rect(667, 390, 40, 60);

  //LINEAS DE COLUMNAS y y el ladrillo que tiene la columna
  //(1)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(479, 205, 478, 359);
  line(485, 203, 485, 359);
  line(482, 205, 482, 359);
  noStroke();
  fill(152, 129, 100);
  rect(473, 203, 19, 6); //ladrillo

  //(2)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(503, 203, 502, 360);
  line(506, 204, 507, 360);
  line(513, 202, 513, 360);
  line(517, 207, 516, 359);
  noStroke();
  fill(152, 129, 100);
  rect(497, 201, 27, 6); //ladrillo

  //(3)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(536, 199, 536, 361);
  line(539, 200, 539, 358);
  line(544, 200, 544, 358);
  line(549, 358, 549, 198);
  noStroke();
  fill(152, 129, 100);
  rect(531, 197, 27, 8);

  //(4 )
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(573, 194, 574, 361);
  line(579, 195, 580, 361);
  line(584, 195, 584, 358);
  line(587, 193, 587, 358);
  noStroke();
  fill(152, 129, 100);
  rect(567, 192, 27, 10);

  //(5)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(609, 190, 609, 361);
  line(615, 190, 615, 359);
  line(618, 190, 618, 357);
  line(622, 193, 622, 358);
  line(611, 198, 611, 358);
  noStroke();
  fill(152, 129, 100);
  rect(603, 188, 27, 12);
  //(6)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(649, 187, 649, 359);
  line(654, 187, 654, 358);
  line(645, 186, 645, 359);
  line(657, 185, 657, 358);
  line(660, 188, 660, 361);
  noStroke();
  fill(152, 129, 100);
  rect(640, 182, 27, 10);
  //(7)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(682, 184, 682, 359);
  line(687, 359, 687, 182);
  line(691, 359, 691, 178);
  line(694, 180, 694, 361);
  noStroke();
  fill(152, 129, 100);
  rect(676, 181, 27, 9);

  //(8)
  stroke(255); //CAMBIAR COLOR DE LINEAS
  strokeWeight(1);
  line(715, 180, 715, 358);
  line(718, 358, 718, 180);
  line(722, 180, 722, 356);
  line(724, 359, 724, 180);
  noStroke();
  fill(152, 129, 100);
  rect(709, 180, 25, 9);

  // techo roto
  fill(50, 70, 130);
  noStroke();
  quad(538, 157, 512, 159, 504, 155, 532, 144);

  //NUBE

  /*fill(60,83,156);
   beginShape();
   vertex(558,122);
   vertex(552,84);
   vertex(549,31);
   vertex(590,8);
   vertex(634,10);
   vertex(645,49);
   vertex(629,72);
   vertex(612,114);
   vertex(558,122);
   endShape(CLOSE);*/
  fill(127, 134, 165);
  ellipse(578, 31, 55, 90);
  ellipse(625, 76, 60, 50);
  ellipse(638, 24, 60, 80);
  ellipse(599, 64, 60, 90);
  fill(197, 201, 224);
  ellipse(603, 31, 30, 60);
  ellipse(622, 59, 30, 60);
  ellipse(642, 72, 30, 40);
  ellipse(585, 34, 30, 40);
  fill(69, 96, 179);
  ellipse(545, 31, 30, 40);
  ellipse(558, 18, 20, 30);
  ellipse(552, 43, 20, 30);

  ellipse(422, 256, 15, 35);
  ellipse(440, 258, 30, 20);
  ellipse(420, 268, 20, 30);
  ellipse(436, 270, 20, 30);


  fill(255);
  text(400 + mouseX + " - " + mouseY, mouseX, mouseY);
  println(mouseX + " - " + mouseY);
}
