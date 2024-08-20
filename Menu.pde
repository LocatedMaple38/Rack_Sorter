void menuSetup(){
    xAdd = 0;
    yAdd = 0;
    widthAdd = 20;
    heightAdd = 10;

    xFile = 20;
    yFile = 0;
    widthFile = 20;
    heightFile = 10;

    xFileSaveAs = 20;
    yFileSaveAs = 10;
    widthFileSaveAs = 20;
    heightFileSaveAs = 10;
    
    xFileSave = 20;
    yFileSave = 20;
    widthFileSave = 20;
    heightFileSave = 10;
    
    xFileLoad = 20;
    yFileLoad = 30;
    widthFileLoad = 20;
    heightFileLoad = 10;
}

void menuDraw(){
    fill(#ffffff);
    rect(xAdd, yAdd, widthAdd, heightAdd);
    rect(xFile, yFile, widthFile, heightFile);
    fill(#000000);
    text("Add", xAdd, yAdd, widthAdd, heightAdd);
    text("File", xFile, yFile, widthFile, heightFile);
    
    if(addBool == true){
        
    }
}