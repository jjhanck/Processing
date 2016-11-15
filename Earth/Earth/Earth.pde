PImage img;
void setup() {
  size(1024, 750, P2D);
  background(255);
  img = loadImage("earth.jpg");
  img.resize(width, height);
  // background(img);
  image(img, 0, 0);
  
  int pts = 36;
  float theta = 0;
  float r = 150;
  translate(width/2, height/2);
  beginShape();
  textureMode(NORMAL);
  texture(img);
  for(int i=0; i<pts; i++){
   vertex(cos(theta)*r, sin(theta)*r, (cos(theta)+1)/2, (sin(theta)+1)/2); 
   theta += TWO_PI/pts;
  }
  endShape(CLOSE);
}