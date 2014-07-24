FileBox box;
int forwardPos = 0;
int moveAmt = 20;
FileBox[] boxArray = new FileBox[4];

void setup()
{
  size(1024, 768, P3D);
  int[] fileArray = {200, 300, 400, 500};
  
  for (int i=0; i < fileArray.length; i++)
  {
    boxArray[i] = new FileBox(i, "hello", fileArray[i]);
  }
  
  camera(width/2.0, height/2.0, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}

void draw()
{
  background(230);
  
  translate(-boxArray.length * 50, 0, 0);
  for (int i=0; i< boxArray.length; i++)
  {
    boxArray[i].display();
  }
  
  if (keyPressed && key == CODED)
  {
    if (keyCode == UP)
    {
      forwardPos -= moveAmt;
    }
    else if (keyCode == DOWN)
    {
      forwardPos += moveAmt;
    }
  }
  camera(mouseX*2 - 500, -500 + mouseY*2, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}
