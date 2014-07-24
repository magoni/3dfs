class FileBox
{
  int w,
      xpos,
      ypos,
      zpos,
      index;
  float h;

  FileBox(int i, int fileSize)
  {
    w = 50;
    h = fileSize * .01;
    ypos = (int)(-25 * h);
    zpos = 0;
    index = i;
    xpos = index * 2 * w;
  }
   
  void display()
  {
    pushMatrix();
    translate(xpos + width/2, ypos + height/2, zpos);
    scale(1, h);
    box(w);
    popMatrix();
  }
  
  public int getIndex() {
    return index;
  }
}       

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
    boxArray[i] = new FileBox(i, fileArray[i]);
  }
  
  camera(width/2.0, height/2.0, forwardPos + (height/2.0) / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
}

void draw()
{
  background(230);
  
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
