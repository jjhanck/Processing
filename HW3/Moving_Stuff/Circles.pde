
void drawcircles() {

  // translate, rotate, scale

  // outer ellipse
  pushMatrix();
  translate(sz, sz);
  rotate(radians(frameCount));
  //printMatrix();
  ellipse(x1, y1, x1, y1);
  popMatrix();

  // 2nd rect
  pushMatrix();
  translate(100, 100);
  rotate(-radians(frameCount));
  ellipse(-sz/2, -sz/2, sz, sz);
  popMatrix();


  //3rd rect
  translate(100, 100);
  rotate(radians(frameCount)*2);
  ellipse(-sz/2, -sz/2, sz, sz);
}