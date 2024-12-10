void rackSetup(){
  int i = 0;
  while(rackAdd && i < rackINT){
    rackSelect[i] = false;
    xRack[i] = 100;
    yRack[i] = 100;
    widthRack[i] = 482.6;
    heightRack[i] = 44.45*rackU[i];
    
    
    widthChangeSize = 40;
    heightChangeSize = 10;
    
    xDel = xChangeSize;
    yDel = yChangeSize+10;
    widthDel = 40;
    hightDel = 10;
    
    xCopy = xChangeSize;
    yCopy = yChangeSize+20;
    widthCopy = 40;
    heightCopy = 10;
    
    xCut = xChangeSize;
    yCut = yChangeSize+30;
    widthCut = 40;
    heightCut = 10;
    
    xPaste = xChangeSize;
    yPaste = yChangeSize+40;
    widthPaste = 40;
    heightPaste = 10;
    
    if(i == rackINT){
      addBool = false;
      continue;
    }else{
      i++;
    }
  }
}

void rackDraw(){
  int i = 0;
  while(i < rackINT){
    fill(150);
    rect(xRack[i], yRack[i], widthRack[i], heightRack[i]);
    noFill();
    
    if(i == rackINT){
      i = 0;
      continue;
    }else{
      i++;
    }
  }
}

void rackKeyPressed(){
  
  for(int i = 0; i < rackINT;){
    if(mouseButton == RIGHT && mouseX>xRack[i] && mouseX<xRack[i]+widthRack[i] && mouseY>yRack[i] && mouseY<yRack[i]+heightRack[i]){
      xChangeSize = mouseX;
      yChangeSize = mouseY;
      rackSetup();
      rackPopUPBool = true;
    }
    if(i == rackINT){
      i = 0;
      continue;
    }else{
      i++;
    }
  }
}

void rackPopUP(){
  fill(255);
  rect(xChangeSize, yChangeSize, widthChangeSize, heightChangeSize);
  rect(xDel, yDel, widthDel, hightDel);
  rect(xCopy, yCopy, widthCopy, heightCopy);
  rect(xCut, yCut, widthCut, heightCut);
  rect(xPaste, yPaste, widthPaste, heightPaste);
  fill(0);
  text("change Size", xChangeSize, yChangeSize, widthChangeSize, heightChangeSize);
  text("deleate", xDel, yDel, widthDel, hightDel);
  text("coppy", xCopy, yCopy, widthCopy, heightCopy);
  text("cut", xCut, yCut, widthCut, heightCut);
  text("paste", xPaste, yPaste, widthPaste, heightPaste);
  noFill();
}
