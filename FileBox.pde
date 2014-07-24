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
