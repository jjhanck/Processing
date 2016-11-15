float birthRate= .4;
float particleCountCurrent =0;
int particleCount =1;
float [] x = new float[particleCount];
float [] y = new float[particleCount];
int[] sideCount = new int[particleCount];
float[] radius = new float[particleCount];
float[] speedX = new float[particleCount];
float[] speedY = new float[particleCount];
float[] gravity = new float[particleCount];
float[] damping = new float[particleCount];
float[] friction  = new float[particleCount];


void setup () {
  
  size (1000, 800);
  for(int i=0; i< particleCount; i += 1) {
  x[i] = width/2;
  y[i]= height/3;
  sideCount[i] = int(random(3,10));
  speedX[i] = random(-2,2);
  speedY[i] = random (-3, 2.2);
  radius[i] = random (1, 4);
  gravity[i]= .09;
  damping[i] =.77;
  friction[i] =.77;
  }

}

void draw(){
  //background(0);
  fill(0, 20);
 // noStroke();
 rect(-1, -1, width+1, height+1);
  
  for(int i=0; i< particleCountCurrent; i += 1){
  polygon(x[i], y[i], radius[i], sideCount[i], 2, color (random(255), random(255), random(255)));
  x[i] += speedX[i];
  speedY[i] += gravity[i];
  y[i] += speedY[i];
  checkCollisions(i);
}  if (particleCountCurrent < particleCount - birthRate){
    particleCountCurrent += birthRate;}}
void checkCollisions(int i){
    if (x[i] > width - radius[i]) {
      x[i] = width - radius[i];
  speedX[i] = speedX[i] * -1;
}
 if (x[i] < radius[i]) {
   x[i] = radius[i];
  speedX[i] = speedX[i] * -1;
 }
   if (y[i] > height - radius[i]) {
     y[i] = height - radius[i];
  speedY[i] = speedY[i] * -1;
  speedY[i] *= damping[i];
  speedX[i] *= friction[i];
   }
   if (y[i] < radius[i]) {
  speedY[i] = speedY[i] * -1;
   }
}