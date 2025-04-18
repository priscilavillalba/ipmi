
PImage
//------------------------------------------------ tab size
foto = loadImage("foto_autoretrato.jpg"); 
size(800, 400);


//-------------------------------------------------- background

background(215, 215, 210);

noStroke();
fill(21, 100, 55 );
rect(650, 0, 10, 400);

noStroke();
fill(230, 215, 210);
rect(660, 0, 305, 450);

noStroke();
fill(225, 225, 210);
rect(347, 0, 305, 450);


image(foto, 0, 0, 400, 400);

//-------------------------------------------------- hair pt.1



noStroke();
fill(80, 30, 20);
ellipse(600, 220, 200, 260);
ellipse(600, 210, 250, 290);

arc(510, 240, 80, 200, HALF_PI, PI + HALF_PI, CHORD);
arc(510+20, 240, 80, 200, HALF_PI, PI + HALF_PI, CHORD);


arc(690, 240, 80, 200,  -HALF_PI, HALF_PI, CHORD);
arc(690-20, 240, 80, 200,  -HALF_PI, HALF_PI, CHORD);


arc(600, 310, 140, 40, 0, PI, CHORD);




//-------------------------------------------------- face

noStroke();
fill(255, 220, 200);

ellipse(600, 200, 180, 220); //head

fill(30); //glasses
rect(610, 190, 70, 25, 3);
rect(590-2, 190, 27, 15);
rect(520, 190, 70, 25, 3);
rect(508, 190, 25, 13);
rect(668, 190, 25, 13);


fill(225, 150, 160); //lips
ellipse(599, 250, 30, 15);
ellipse(600, 254, 25, 15);

fill(60, 40, 15); //eyebrowns

arc(550, 178, 40, 10, PI, TWO_PI, OPEN); //right


arc(650, 178, 40, 10, PI, TWO_PI, OPEN);// left


//------------------------------------------------- hair pt.2

fill(80, 30, 20); 
noStroke();


pushMatrix();
translate(545, 70); 
rotate(radians(188));
arc(230, -8, 600, 300, PI, PI + QUARTER_PI, CHORD);
popMatrix();

pushMatrix();
translate(540, 70);
rotate(radians(188));
arc(230, -8, 600, 300, PI, PI + QUARTER_PI, CHORD);
popMatrix();


pushMatrix();
translate(525, 70);
rotate(radians(188));
arc(230, -8, 600, 300, PI, PI + QUARTER_PI, CHORD);
popMatrix();

fill(80, 30, 20);
pushMatrix();
translate(560, 180);
rotate(radians(-20));
arc(235, 33, 600, 360, PI, PI + QUARTER_PI, CHORD);
popMatrix();


pushMatrix();
translate(590, 145); 
rotate(radians(100));
arc(0, 0, 70, 20, PI, TWO_PI);
popMatrix();


pushMatrix();
translate(600, 145); 
rotate(radians(90));
arc(0, 0, 77, 25, PI, TWO_PI);
popMatrix();


pushMatrix();
translate(615, 145); 
rotate(radians(80));
arc(0, 0, 78, 20, PI, TWO_PI);
popMatrix();


pushMatrix();
translate(600, 120); 
rotate(radians(95));
arc(0, 0, 75, 25, PI, TWO_PI);
popMatrix();


rect(595, 80, 50, 30);


noStroke();
fill(80, 30, 20);

pushMatrix();
translate(642, 160);
rotate(radians(210));
arc(-15, 90-25, 160, 125, PI + QUARTER_PI, TWO_PI, CHORD);
popMatrix();

pushMatrix();
translate(640, 180);
rotate(radians(240));
arc(-32, 70, 190, 100, PI + QUARTER_PI, TWO_PI, CHORD);
popMatrix();


pushMatrix();
translate(620, 150);
rotate(radians(-225));
arc(0, 100, 150, 100, PI + QUARTER_PI, TWO_PI, CHORD);
popMatrix();



//------------------------- arm

noStroke();
fill(255, 220, 200); 

// Brazo derecho
rect(650, 320, 25, 60); 

strokeWeight(2);
pushMatrix();
translate(666, 390);
rotate(radians(-130));
rect(0, 0, 25, 60); 
popMatrix();
circle(660, 380, 22);


rect(525, 320, 25, 60); 

strokeWeight(2);
pushMatrix();
translate(513, 420); 
rotate(radians(-129));
rect(0, 0, 25, 60); 
popMatrix();



//-------------------------------------------------  body


fill(255);
stroke(255, 0, 0);
pushMatrix();
translate(550-10, 325);
rotate(radians(-250));
arc(0, 0, 30, 40, HALF_PI, PI + HALF_PI, OPEN); 
popMatrix();

stroke(255, 0, 0);
pushMatrix();
translate(660, 325);
rotate(radians(250));
arc(0, 0, 30, 40, -HALF_PI, HALF_PI, OPEN);    
popMatrix();


noStroke();
fill(255); 
rect(550, 310, 100, 90, 20); 


stroke(255, 0, 0); 
strokeWeight(2);

//--------------- stripes
line(555, 315, 645, 315);
line(550, 321, 648, 321);
line(550, 327, 649, 327);
line(550, 333, 649, 333);
line(550, 339, 649, 339);
line(550, 345, 649, 345);
line(550, 351, 649, 351);
line(550, 357, 649, 357);
line(550, 363, 649, 363);
line(550, 369, 649, 369);
line(550, 375, 649, 375);
line(550, 381, 649, 381);
line(550, 387, 649, 387);

fill(255, 220, 200); 
strokeWeight(2);
pushMatrix();
translate(600, 309);
rotate(radians(180));
arc(0, 0, 48, 30, PI, TWO_PI);
popMatrix();

//-------------------------------------------- headphones

fill(50); 
noStroke();

pushMatrix();
translate(546, 425);
rotate(radians(50));
ellipse(-50, -90, 50, 35);
popMatrix();

pushMatrix();
translate(724, 340);
rotate(radians(-55));
ellipse(-50, -90, 50, 35);
popMatrix();

//--------------- nose

stroke(150, 90, 90); 
strokeWeight(2);
noFill();
arc(600, 215, 20, 10, 0, PI); 

//--------------------------------------------- hand

fill(255, 220, 200);
noStroke();

ellipse(705, 330, 30, 45); 

pushMatrix();
translate(710, 300); 
rotate(radians(10));
ellipse(0, 0, 15, 40);
popMatrix();


pushMatrix();
translate(690, 300); 
rotate(radians(-25));
ellipse(0, 0, 15, 40);
popMatrix();


fill(255, 205, 200);

pushMatrix();
translate(690, 300); 
rotate(radians(-85));
ellipse(-25, 10, 12, 20);
popMatrix();

pushMatrix();
translate(710, 306); 
rotate(radians(-83));
ellipse(-30, -10, 12, 20);
popMatrix();

fill(255, 210, 200);
noStroke();

pushMatrix();
translate(725, 290); 
rotate(radians(-83));
ellipse(-30, -10, 13, 20);
