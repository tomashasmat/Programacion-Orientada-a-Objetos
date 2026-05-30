Movil n;
  
  void setup(){
    size(800, 600);
    n = new Movil(width/2, height/2);
}

    void draw(){
      n.mover();
      n.mostrar();
  }
