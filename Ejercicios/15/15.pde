Movil n;

class Movil{
  PVector pos, vel;
  int r;
  
  void setup(){
    size(800, 600);
    n = new Movil(width/2, height/2);
  }
  
  Movil(float y, float x){
    pos = new PVector(x, y);
    vel = new PVector(1, 1);
  }
  
  void mover(){
    pos.add(vel);
    contener();
  }
  
  void mostrar(){
    ellipse(pos.x, pos.y, r, r);
  }
  
  void contener(){
    if(pos.x < 0 || pos.x > width){
      pos.sub(vel);
      vel.x = vel.x * -1;
    }
    
    if(pos.y < 0 || pos.y > height){
      pos.sub(vel);
      vel.y = vel.y * -1;
    }    
    void draw(){
      n.mover();
      n.mostrar();
  }
}
