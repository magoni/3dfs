class FileBox
{
  int h,
    w,
    xpos,
    ypos,
    zpos,
    index;

  FileBox(int i, int fileSize)
  {
    w = 50;
    h = fileSize;
    xpos = 0;
    ypos = 0;
    zpos = 0;
    index = i;
  }
   
  void display()
  {
    translate(xpos + width/2, ypos + height/2, zpos);
    rotateZ(zpos);
    box(w);
  }
}       

FileBox box;
int forwardPos = 0;
int moveAmt = 20;

void setup()
{
  size(1024, 768, P3D);
  box = new FileBox(1, 100);
  lights();
  camera(width/2.0, height/2.0, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}

void draw()
{
  background(230);
  box.display();
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
  camera(width/2.0 + 100, height/2.0 - 100, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}
