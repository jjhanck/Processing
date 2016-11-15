//define particle
float x, y;
float speedX = 5.2, speedY = 2.75;
float radius = 30;
void setup() {
  size(800, 700);
  x = width/2;
  y = 0;
}

void draw() {
  //background (255);
  polygon();
  //speedY= speedY + 1;
  x = x + speedX;
  y = y + speedY;
 
  checkCollisions();
}
void checkCollisions(){
    if (x > width) {
  speedX = speedX * -1;
}
 if (x < 0) {
  speedX = speedX * -1;
 }
   if (y > height) {
  speedY = speedY * -1;
   }
   if (Y < 0) {
  speedY = speedY * -1;
   }
}