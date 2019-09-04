//variabler
float xSpeed = 3, ySpeed = 3; //Hastigheden på bolden.
float xHeight = 0.1, yWidth = 0.1; //Hastigheden på kassen som skrumper.
float x = 0, y = 0; //x og y værdi som skal bruges til at flytte bolden.
float H = 599; //Height som bruges til reflektion if
float W = 799; //Width som bruges til reflektion if 

void setup() {// Køre kun en gang
  size(800, 600);
}

void keyPressed(){
  println("knap trykket");
}

void draw() { //Det der tegner
  clear();
  background (100); //Bagrunds farven
  stroke(255, 51, 51); //Angiver farven på stregen omkring figuerne
  fill(220,255,255); //Farven på kassen
  rect(0, 0, W, H); //Kasse
  fill(55, 51, 51); //Farven på bolden
  ellipse(0 + x, 0 + y, 30, 30); //Bolden

  x = x + xSpeed; //Hastighed af bolden imod x
  y = y + ySpeed; //Hastighed af bolden imod y

  //reflekter
  if (x + 10 > W) { 
    xSpeed *= -1; x = W -10; } //Højre side af kassen
    if (x - 10 < 0) { 
      xSpeed *= -1; x = 0 + 10; //Venstre side af kassen
    }
    if (y + 10 > H) { 
      ySpeed *= -1; y = H - 10; } //Nederste del af kassen
      if (y - 10 < 0) { 
        ySpeed *= -1; y = 0 + 10; //Øverste del af kassen
      }
      //Skrummpende kasse
      H = H - xHeight;
      W = W - yWidth;
    }
