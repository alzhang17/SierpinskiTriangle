int lenth = 21;
int xside = 0;
int yside = 900;
int max = 20;
int start = -1;
boolean textShow = false;

void setup(){
  size(900,900);
}

void draw(){
  background(0);
  sierpinski(xside, yside, lenth);
}

void mousePressed(){
  if(lenth < 900)
     lenth+=40;
  else{
    lenth = 21;
  }
}


public void sierpinski(int x, int y, int len){
  if(len <= max){
    triangle(x, y, x + len/2, y - len, x + len, y);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}

/*public void timer(){
  textSize(30);
  if(start != -1 && textShow){
    text((millis()-start)/1000, 200, 200);
  }else if(textShow){
    text("0", 200, 200);
  }
  
  if(lenth > 900 && start == -1){
    textShow = !textShow;
    start = millis();
  }
 
  if((millis()-start)/1000 >= 10){
    lenth -= lenth;
    start = -1;
    textShow = !textShow;
  }
}
*/
