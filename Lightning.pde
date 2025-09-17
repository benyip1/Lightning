int x1 = 300;
int y1 = 0;
int x2 = 300;
int y2 = 0;

void setup(){
  noLoop();
  size(600,600);
  background(0, 0, 0, 99);
}

void draw(){
  fill(0, 0, 0, 99);
  rect(0, 0, 600, 600);
  while(y2 < 590){
    x2 = x1 + (int)((Math.random() - 0.5) * 15);
    y2 = y1 + (int)(Math.random() * 10);
    stroke(255, 255, 0, 90);
    strokeWeight(3);
    line(x1 ,y1, x2, y2);
    stroke(53, 147, 141, 80);
    strokeWeight(3);
    line(x1, y1, x2, y2);
    x1 = x2;
    y1 = y2;
    cloud();
  }
  fire(x2, y2);
}

void mousePressed(){
  x1 = 300;
  x2 = 300;
  y1 = 0;
  y2 = 0;
  redraw();
}

void cloud(){
  noStroke();
  fill(157, 156, 156);
  ellipse(240, 21, 75, 80);
  ellipse(300, 25, 41, 58);
  ellipse(280, 39, 83, 82);
  ellipse(315, 43, 92, 57);
  ellipse(340, 32, 108, 67);
  ellipse(275, 42, 104, 53);
  ellipse(340, 17, 61, 87);
  ellipse(230, 6, 104, 54);
  ellipse(380, 5, 104, 54);
  ellipse(360, 7, 30, 67);
}

void fire(int x, int y){
  int size1 = 100;
  for(int i = 0; i < 16; i ++){
    fill(255, (int)(Math.random() * 100), (int)(Math.random() * 100), 50);
    ellipse(x, y, size1, size1);
    ellipse(x - ((int)(Math.random()*30)), y, size1, size1);
    x += (int)(Math.random()*20 - 10);
    y -= (int)(Math.random()*15);
    size1 -= 100/16;
  }
}
