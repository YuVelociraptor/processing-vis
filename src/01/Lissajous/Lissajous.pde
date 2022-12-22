void setup(){
  
  size(1000, 800);
  
  background(255, 255, 255);
}

float delta = 0.2;

void draw(){

  background(255, 255, 255);
  translate(width / 2, height / 2);
  println(frameCount);
  
  for(float deg = 0; deg < 360; deg += delta){
    float xs = calcX(radians(deg));
    float ys = calcY(radians(deg));
    float xe = calcX(radians(deg + delta));
    float ye = calcY(radians(deg + delta));
    
    line(xs, ys, xe, ye);
  }
}

float calcX(float t){
  
  return cos(7 * t + radians(frameCount) * 0.5) * calcR();
}

float calcY(float t){
  
  return sin(5 * t + radians(frameCount) * 0.7) * calcR();
}

float calcR(){

  if (width > height){
  
    return height / 2 * 0.8;
  
  }else{
  
    return width / 2 * 0.8;
  }
}
