class File3d {  
  int w,
      xpos,
      ypos,
      zpos,
      index;
  float h;
  String fileName;

  File3d (int i, String n, int fileSize)
  {
    w = 50;
    h = fileSize * .01;
    ypos = (int)(-25 * h);
    zpos = 0;
    index = i;
    xpos = index * 2 * w;
    fileName = n;
  }
   
  void display()
  {
    pushMatrix();
    translate(xpos + width/2, ypos + height/2, zpos);

    // filename text
    fill(0);
    textAlign(CENTER);    
    text(this.fileName, 0, -ypos - 20, 1 + (w / 2));
    
    // rectangular prism
    scale(1, h);
    fill(255);
    box(w);
    popMatrix();
  }
  
  public int getIndex() {
    return this.index;
  }

  public String getFileName() {
    return this.fileName;
  }
  
}
