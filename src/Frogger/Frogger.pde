int frogHop = 20;
int frogX = 800;
int frogY = 600;
Car car1 = new Car(700,20,100,25);
Car car2 = new Car(700,120,100,20);
Car car3 = new Car(700,220,100,15);
Car car4 = new Car(700,320,100,10);
Car car5 = new Car(150,20,100,25);
Car car6 = new Car(300,120,100,20);
Car car7 = new Car(450,220,100,15);
Car car8 = new Car(600,320,100,10);
void setup(){
  size(800,600);
}
void draw(){
  background(0,0,255);
  fill(0,255,0);
  ellipse(frogX,frogY,25,25);
  borders();
  car1.driveLeft();
  car2.driveRight();
  car3.driveLeft();
  car4.driveRight();
  car5.driveUp();
  car6.driveUp();
  car7.driveUp();
  car8.driveUp();
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car5.display();
  car6.display();
  car7.display();
  car8.display();
  if(intersects(car1) || intersects(car2) || intersects(car3) || intersects(car4) || intersects(car5) || intersects(car6) || intersects(car7) || intersects(car8)){
    frogX=800;
    frogY=600;
  }
}
 void keyPressed(){
      if(key == CODED){
            if(keyCode == UP)
            {
                  frogY-=frogHop;
            }
            else if(keyCode == DOWN)
            {
                  frogY+=frogHop;
            }
            else if(keyCode == RIGHT)
            {
                  frogX+=frogHop;
            }
            else if(keyCode == LEFT)
            {
                  frogX-=frogHop;
            }
      }
}
void borders(){
  if(frogX>800){
    frogX=800;
  }
  if(frogX<0){
    frogX=0;
  }
  if(frogY>600){
    frogY=600;
  }
  if(frogY<0){
    frogY=0;
  }
}
boolean intersects(Car car) {
      if ((frogY >= car.getY() && frogY <= car.getY()+50) && (frogX >= car.getX() && frogX <= car.getX()+car.getSize()))
      {
             return true;
      }
      else
      {
             return false;
      }
}
public class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  public Car(int carX, int carY, int carSize, int carSpeed){
    this.carX=carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  }
  void display()
{
      fill(255,0,0);
      rect(carX , carY, carSize, 50);
}
void driveLeft(){
  carX-=carSpeed;
  if(carX<-carSize){
    carX=800;
  }
}
void driveRight(){
  carX+=carSpeed;
  if(carX>800){
    carX=-carSize;
  }
}
void driveUp(){
 carY-=carSpeed;
 if(carY<-50){
  carY=600;
 }
}
int getX(){
  return carX;
}
int getY(){
  return carY;
}
int getSize(){
  return carSize;
}
}