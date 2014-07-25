class Directory()
{
  String[] filePaths; // Java File objects
  File3d[] files; // File3d objects, to be displayed

  Directory(String p)
  {
    java.io.File folder = new java.io.File(dataPath(p));
    filePaths = folder.listFiles();

    if (filePaths == null)
      return false; //it's not a directory, it's a file
    
    for (int i=0; i < filePaths.length; i++)
    {
      int currFile = filePaths[i];
      files[i] = new File3d(i, currFile.getName(), currFile.length()); // issue: if directory denoted, length is unspecified  
    }
  }
  
  public String[] getFileNames
  {
    return this.filenames;
  }
  
  public int numFiles
  {
    return this.filenames.length;
  }
  
  public String getParentPath
  {
    return this.filePaths[0].getParentFile();
  }
  
  public void display()
  {
    for (int i=0; i < filenames.length; i++)
    {
      files[i].display();
    }
  }   
}
