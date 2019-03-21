int pipeX = 500;
int pipeHeight=(int) random(100,300);
int pipeGap=100;
int birdX = 100;
float birdY = 100;
float birdYVelocity = -5;
float gravity = 0.2;
void setup(){
  size(500,500);
}
void draw(){
  background(0,255,0);
  fill(255,0,0);
  stroke(0,0,255);
  ellipse(birdX,birdY,20,20);
  birdY+=birdYVelocity;
  birdYVelocity+=gravity;
  if(birdY>470){
   System.exit(0);
  }
  if(birdY<0){
    birdY=0;
    birdYVelocity=0;
  }
  fill(#F7F714);
  rect(pipeX,0,30,pipeHeight);
  rect(pipeX,pipeHeight+pipeGap,30,500-pipeHeight-pipeGap);
  pipeX-=2;
  if(pipeX<0){
   pipeX=500;
   pipeHeight=(int) random(100,300);
  }
  if(intersectsPipes()){
    System.exit(0);
  }
  rect(0,470,500,30);
}
void mousePressed(){
  birdYVelocity-=5;
}
boolean intersectsPipes() {
     if (birdY < pipeHeight && birdX > pipeX && birdX < (pipeX+30)){
          return true; }
     else if (birdY>pipeHeight+pipeGap && birdX > pipeX && birdX < (pipeX+30)) {
          return true; }
     else { return false; }
} 