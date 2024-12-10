int addInt = 1;

boolean fileBool = false;
float xFile, yFile, widthFile, heightFile;
float xFileSaveAs, yFileSaveAs, widthFileSaveAs, heightFileSaveAs;
float xFileSave, yFileSave, widthFileSave, heightFileSave;
float xFileLoad, yFileLoad, widthFileLoad, heightFileLoad;

boolean addBool = false;
float xAddRack, yAddRack, widthAddRack, heightAddRack;
float xAddRackItem, yAddRackItem, widthAddRackItem, heightAddRackItem;
float xAdd, yAdd, widthAdd, heightAdd;

int rackINT = 1;
int[] rackU = new int[rackINT];
float[] xRack = new float[rackINT], yRack = new float[rackINT], widthRack = new float[rackINT], heightRack = new float[rackINT];
float xChangeSize, yChangeSize, widthChangeSize, heightChangeSize;
float xDel, yDel, widthDel, hightDel;
float xCopy, yCopy, widthCopy, heightCopy;
float xCut, yCut, widthCut, heightCut;
float xPaste, yPaste, widthPaste, heightPaste;
boolean rackAdd = true;
boolean rackPopUPBool = false;
boolean[] rackSelect = new boolean[rackINT];
void setup() {
  rackU[0] = 1;
  size(600, 600);
  menuSetup();
  rackSetup();
  
  textAlign(LEFT, CENTER);
  textSize(10);
}

void draw(){
  menuDraw();
  rackDraw();
  
  if(rackPopUPBool){
    rackPopUP();
  }
}

void mousePressed() {
  addKeyPressed();
  rackKeyPressed();
}

void keyPressed() {
}
