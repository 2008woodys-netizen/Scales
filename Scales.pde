void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  scale(50, 50);
}
void scale(int x, int y) {
  pushMatrix();
  translate(x,y);
  rotate(PI/2);
  bezier(0,0,45,40,60,-45,0,0);
  popMatrix();
}
