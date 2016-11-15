void mousePressed() {for(int i=0; i< particleCount; i += 1) {
  x[i] = mouseX;
  y[i]= mouseY;
  sideCount[i] = int(random(3,10));
  speedX[i] = random(-2,2);
  speedY[i] = random (-3, 2.2);
  radius[i] = random (1, 4);
  gravity[i]= .09;
  damping[i] =.77;
  friction[i] =.77;
  }}