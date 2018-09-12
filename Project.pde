float mouse;
int squareY;
int squareX;
int checker;
int y;
 
void setup(){
  size(800, 800);
  background(#dbc3c0, 0);
  for(int i = 0; i < height; i++){
    rect(50, y, 475, 10);
    y+=20;
    
  }
}

void draw(){
  rectMode(RIGHT);
   for(int i = 0; i < height; i+=5){
     rotate(radians(checker*9));
    fill(#c0c9db);
   
    
  }
  mouse = dist(mouseX, mouseY, pmouseX, pmouseY);
  pushMatrix();
  rect(80,100,40,40);
  translate(mouseX, mouseY);
  checker++;
  fill(1, 0);
  popMatrix();
 
  }
 void mouseDragged() {
   if(mousePressed == true){
  fill(#B8B0B9);
  rect(mouseX, mouseY, 300, 300);
   }
  else if(mousePressed == false){
    rotate(radians(checker*9));
    rect(mouseX, mouseY,40,40);
    fill(#c0c9db);
    stroke(#dbc3c0);
   }
}
