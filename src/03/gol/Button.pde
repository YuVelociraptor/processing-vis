class Button{
  
  float xs;
  float ys;
  float w;
  float h;
  color c;
  
  Button(float xs, float ys, float w, float h, color c){
    this.xs = xs;
    this.ys = ys;
    this.w = w;
    this.h = h;
    this.c = c;
  }
  
  void renderShape(){
    
    fill(c);
    rect(this.xs, this.ys, this.w, this.h);
  }
  
  boolean isClicked(float x, float y){
    
    if(x < this.xs || x > this.xs + this.w || y < this.ys || y > this.ys + this.h){
      return false;
    }else{
      return true;
    }
  }
}
