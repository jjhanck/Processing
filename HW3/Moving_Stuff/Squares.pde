
void draw() {
  // translate, rotate, scale

  // 1st rect
  fill(random(255), random(255), random(255));
  pushMatrix();
  translate(sz, sz);
  rotate(radians(frameCount));
  //printMatrix();
  rect(x1, y1, x1, y1);
  popMatrix();
fill(212,15,200);
  // 2nd rect
  pushMatrix();
  translate(100, 100);
  rotate(-radians(frameCount));
  rect(-sz/2, -sz/2, sz, sz);
  popMatrix();


  //3rd rect
  translate(100, 100);
  rotate(radians(frameCount)*2);
  rect(-sz/2, -sz/2, sz, sz);
  fill(15,221,10);
}