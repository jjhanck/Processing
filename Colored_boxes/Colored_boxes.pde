int rectX, rectY;      // Position of square button
int rect2X, rect2Y; 
int rect3X, rect3Y; 
int rectSize = 150;     // Diameter of rect
color rectColor, rect2Color, rect3Color, baseColor;
color rectHighlight, rect2Highlight, rect3Highlight;
color currentColor;
boolean rectOver = false;
boolean rect2Over = false;
boolean rect3Over = false;

void setup() {
  size(1200, 800);
  rectColor = color(0, 0, 0);
  rectHighlight = color(51, 15, 12);
  rect2Color = color(255, 17,17);
  rect2Highlight = color(204, 200, 212);
  rect3Color = color(12, 17, 200);
  rect3Highlight = color(7);
  baseColor = color(102);
  currentColor = baseColor;
  rect2X = width/3;
  rect2Y = height/2-rectSize/2;
  rectX = width/2;
  rectY = height/2-rectSize/2;
  rect3X = width/6;
  rect3Y = height/2-rectSize/2;
  ellipseMode(CENTER);
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  
  if (rectOver) {
    fill(rectHighlight);
  } else {
    fill(rectColor);
  }
  stroke(255);
  rect(rectX, rectY, rectSize, rectSize);
  
  if (rect2Over) {
    fill(rect2Highlight);
  } else {
    fill(rect2Color);
  }
  stroke(0);
  rect(rect2X, rect2Y, rectSize, rectSize);
   
   if (rect3Over) {
    fill(rect3Highlight);
  } else {
    fill(rect3Color);
  }
  stroke(0);
  rect(rect3X, rect3Y, rectSize, rectSize);
}

void update(int x, int y) {
  if ( overRect2(rect2X, rect2Y, rectSize) ) {
    rect2Over = true;
    rectOver = false;
    rect3Over = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    rect2Over = false;
    rect3Over = false;
  }
  else if ( overRect3 (rect3X, rect3Y, rectSize) ) {
   rectOver = false;
   rect2Over = false;
   rect3Over = true;
  } 
  else {
    rect2Over = rectOver = rect3Over = false;
  }
}

void mousePressed() {
  if (rect2Over) {
    currentColor = rect2Color;
  }
  if (rectOver) {
    currentColor = rectColor;
  }
  if (rect3Over) {
    currentColor = rect3Color;
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overRect2(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;}
  }
boolean overRect3(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}