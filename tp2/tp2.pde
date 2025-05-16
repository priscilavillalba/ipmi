//priscila villalba, comision 3, TP2.

//variables. :)

PFont laFuentecita;

PImage imagen1, imagen2, imagen3;
int imagenActual = 1;
int frameAnterior = 0;
int tiempoCambio = 180; // 6 segundos con frameRate 30

float posYContenida = -50; // comienza fuera de pantalla
float velYContenida = 3;

float escalaTexto = 0.1;
boolean creciendo = true;

float opacidad = 0;

float r, g, b;

float botonX, botonY, botonAncho = 200, botonAlto = 50;

boolean esperarClick = false;


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


void setup() {
  size(640, 480);
  frameRate(30);

laFuentecita = createFont("data/Playthings.ttf", 48);
textFont(laFuentecita);

  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

  botonX = width / 2;
  botonY = height - 50;



}

void draw() {
  background(255);
  
  if (frameCount % 10 == 0) {
 r = random(255);
 g = random(255);
 b = random(255);
  
  }
  
  //primera imagen!!!!!!
  
  if (imagenActual == 1) {
    image(imagen1, 0, 0, width, height);

    // Animación del texto bajando :D
    
    
    if (posYContenida < height / 2) {
      posYContenida += velYContenida;
    }

    fill(255, 0, 0);
  
    textAlign(CENTER, CENTER);
    textSize(40);
    text("teamLab Planets TOKYO \nuna experiencia inmersiva de \narte digital ", width/2, posYContenida);
  }

  // segunda imagen!!!!!!
  
   if (imagenActual == 2) {
    image(imagen2, 0, 0, width, height);
    
    // Animación escalada desde esquina
    
    if (creciendo && escalaTexto < 1.0) {
      escalaTexto += 0.01;
      if (escalaTexto >= 1.0) {
        creciendo = false;  // deja de crecer cuando llega al tamaño normal
      }
    }

    fill(r, g, b);
    pushMatrix();
    translate(10 , 50); 
    scale(escalaTexto);

    textAlign(LEFT, LEFT);
    textSize(30);
    text("los creadores colectivo artístico teamLab \ntrajeron la transformacion \ndel espacio físico en un universo interactivo \nde luz, sonido, agua y tecnología.", 0, 0);
    popMatrix();
  
   }
  
  //tercera imagen!!
  
  if (imagenActual == 3) {
    image(imagen3, 0, 0, width, height);
    
    // Animación de opacidad :0
      if (opacidad < 255) {
       opacidad += 2; 
    
    }

   if (opacidad < 255) {
   opacidad += 2; // ajustá la velocidad si querés
}

//cambiamos el color del texto al acercar el mouse

//distancia del mouse al texto (centro)

float distanciaTexto = dist(mouseX, mouseY, width/2, height/2);

// Cambia el color del texto si el mouse está cerca

if (distanciaTexto < 100) {
  fill(255, 100, 100, opacidad);
} else {
  fill(255, opacidad);
}

textAlign(CENTER, CENTER);
textSize(30);
text("una obra que en una sala donde flores digitales\n flotan, se marchitan y renacen \na su alrededor en tiempo real. \nCada movimiento del espectador\n influye en el entorno,\ncomo si el cuerpo y la obra fueran uno solo", width/2, height/2);
  
   if (opacidad >= 255) {
     esperarClick = true;
     dibujarBoton();
  }
}
   
  // Transición automática
  
   if (!esperarClick && frameCount - frameAnterior > tiempoCambio) {
    imagenActual++;
    if (imagenActual > 3) {
      imagenActual = 1;
      reiniciarAnimaciones(); // función que reinicia las variables de animación
    }
    frameAnterior = frameCount;
  }
}

//con este hacemos click

  void mousePressed() {
    
  if (imagenActual == 3 && opacidad >= 255) {

  if (dist(mouseX, mouseY, botonX, botonY) < botonAncho / 2){
      imagenActual = 1;
      frameAnterior = frameCount;
      reiniciarAnimaciones();
        esperarClick = false; 
    }
  }
}

//el botoncito para reiniciar 

void dibujarBoton() {
  fill(255);
  noStroke();
  rectMode(CENTER);
  rect(width/2, height - 50, 200, 50);
  
  fill(200, 105, 180);
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Reiniciar", botonX, botonY);
  
}
  
//aca reiniciamos :)

void reiniciarAnimaciones() {
  posYContenida = -50;
  escalaTexto = 0.1;
  opacidad = 0;
  creciendo = true;
}
