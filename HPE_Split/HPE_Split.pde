PImage hpeSplit;


void setup(){
hpeSplit = loadImage ("HPE_split.jpg");
size(1200, 800);

  line(0, 0, 800, 700);
  line(800, 0, 0, 700);
  image(hpeSplit, 300, 400, 250, 220);

}