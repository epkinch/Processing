void setup()
{
  size(200,200);
  background(255);

  stroke(128);
  rect(20, 20, 40, 40);

  stroke(0);
  pushMatrix();
  scale(2.0);
  translate(-10, -10);
  rect(20, 20, 40, 40);
  popMatrix();
}
