int forwardPos = 0;
int moveAmt = 20;

void setup()
{
  size(1024, 768, P3D);
  
  Directory dir = new Directory("");
  
  camera(width/2.0, height/2.0, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}

void draw()
{
  background(230);
  
  dir.display();
  
  if (keyPressed && key == CODED)
  {
    if (keyCode == UP)
      forwardPos -= moveAmt;
    else if (keyCode == DOWN)
      forwardPos += moveAmt;
  }

  camera(mouseX*2 - 500, -500 + mouseY*2, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}
