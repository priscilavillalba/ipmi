// priscila villalba, comision 3, tp3
// https://youtu.be/5eXUTb-K5-w



PImage referencia;

float tamC = 59;      
float r = 18;        
float opacidad = 95;  
float grosorLinea = 15; 
color colorRelleno = color(0);       
color colorCirculos = color(255);    


void setup() {
  size(800, 400);
  referencia = loadImage("miImagencita.jpeg");
}

void draw() {
background(0);

image(referencia, 0, 0, 400, 400);

dibujarGrilla(400, 0, tamC);

dibujarCirculos(400, 0, tamC, r);
}

void dibujarGrilla(float origenX, float origenY, float tamaño) {
stroke(255, opacidad);
strokeWeight(15);
noFill();

for (float x = origenX; x <= width; x += tamaño) {
line(x, origenY, x, height);
  }
  
for (float y = origenY; y <= height; y += tamaño) {
line(origenX, y, width, y);
}
}


float calcularRadioCirculo(float grosorLinea) {
return map(grosorLinea, 5, 25, 10, 25);
}

void dibujarCirculos(float origenX, float origenY, float tamaño, float diametro) {
noStroke();
fill(colorCirculos);

for (int a = 0; a <= 7; a++) {
for (int b = 0; b <= 7; b++) {
float x = origenX + a * tamaño;
float y = origenY + b * tamaño;
      

if (mouseX > width/2) {
ellipse(x, y, diametro + 10, diametro + 10);
} else {
ellipse(x, y, diametro, diametro);
      }
    }
  }
}


void keyPressed() {
if (key == ' ' || key == ' ') {

tamC = 59;
r = 18;
opacidad = 95;
colorRelleno = color(0);
colorCirculos = color(255);
  }

if (key == 'o' || key == 'O') {

opacidad = random(50, 255);
  }

if (key == 'e' || key == 'E') {
colorCirculos = color(random(255), random(255), random(255));
}
}
