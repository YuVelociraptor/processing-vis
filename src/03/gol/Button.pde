class Button{
  
  float xs;
  float ys;
  float w;
  float h;
  color c;
  String bText;
  boolean enable = true;
  
  Button(float xs, float ys, float w, float h, color c, String bText){
    this.xs = xs;
    this.ys = ys;
    this.w = w;
    this.h = h;
    this.c = c;
    this.bText = bText;
  }
  
  void renderShape(){
    
    if(enable){
      fill(c);
      text(this.bText, this.xs, this.ys);
      rect(this.xs, this.ys, this.w, this.h);
    }
  }
  
  boolean isClicked(float x, float y){
    
    if(!enable){
      
      return false;
      
    }else if(x < this.xs || x > this.xs + this.w || y < this.ys || y > this.ys + this.h){
      
      return false;
      
    }else{
      
      return true;
    }
  }
}
