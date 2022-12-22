int fps = 30;

//int w = 400;
//int h = 300;

int n = 90;

float ratio = 13;

Line[] lines;

void setup(){
  
  frameRate(fps);
  size(300, 300, P3D);
  
  lines = new Line[90];
  lines[0] = new Line(1.20352583333333, -0.32037, -3.41132, 2.35040583333333, -0.6607, -2.61255);
  lines[1] = new Line(1.20352583333333, -0.32037, -3.41132, 0.700925833333333, 1.03202, -3.4285);
  lines[2] = new Line(1.20352583333333, -0.32037, -3.41132, 0.0907258333333333, -1.24455, -3.42397);
  lines[3] = new Line(0.700925833333333, 1.03202, -3.4285, 1.38331583333333, 2.0366, -2.64609);
  lines[4] = new Line(0.700925833333333, 1.03202, -3.4285, -0.749254166666667, 0.96979, -3.45699);
  lines[5] = new Line(-0.749254166666667, 0.96979, -3.45699, -1.13003416666667, -0.44456, -3.45638);
  lines[6] = new Line(-0.749254166666667, 0.96979, -3.45699, -1.48635416666667, 1.98887, -2.69734);
  lines[7] = new Line(-1.13003416666667, -0.44456, -3.45638, 0.0907258333333333, -1.24455, -3.42397);
  lines[8] = new Line(-1.13003416666667, -0.44456, -3.45638, -2.32835416666667, -0.85522, -2.69471);
  lines[9] = new Line(0.0907258333333333, -1.24455, -3.42397, 0.116715833333333, -2.47441, -2.64349);
  lines[10] = new Line(2.35040583333333, -0.6607, -2.61255, 3.01514583333333, 0.3348, -1.82737);
  lines[11] = new Line(2.35040583333333, -0.6607, -2.61255, 2.37990583333333, -1.87877, -1.85464);
  lines[12] = new Line(1.38331583333333, 2.0366, -2.64609, 2.53226583333333, 1.6807, -1.86262);
  lines[13] = new Line(1.38331583333333, 2.0366, -2.64609, 0.671965833333333, 3.02092, -1.86505);
  lines[14] = new Line(-1.48635416666667, 1.98887, -2.69734, -0.782664166666667, 3.00568, -1.91255);
  lines[15] = new Line(-1.48635416666667, 1.98887, -2.69734, -2.67107416666667, 1.59948, -1.90852);
  lines[16] = new Line(-2.32835416666667, -0.85522, -2.69471, -2.29877416666667, -2.09949, -1.89452);
  lines[17] = new Line(-2.32835416666667, -0.85522, -2.69471, -3.09644416666667, 0.1643, -1.93104);
  lines[18] = new Line(0.116715833333333, -2.47441, -2.64349, 1.27598583333333, -2.80293, -1.8419);
  lines[19] = new Line(0.116715833333333, -2.47441, -2.64349, -1.05780416666667, -2.90501, -1.88732);
  lines[20] = new Line(3.01514583333333, 0.3348, -1.82737, 3.43308583333333, -0.32732, -0.63384);
  lines[21] = new Line(3.01514583333333, 0.3348, -1.82737, 2.53226583333333, 1.6807, -1.86262);
  lines[22] = new Line(2.53226583333333, 1.6807, -1.86262, 2.57165583333333, 2.35268, -0.59921);
  lines[23] = new Line(0.671965833333333, 3.02092, -1.86505, 1.42294583333333, 3.21388, -0.6447);
  lines[24] = new Line(0.671965833333333, 3.02092, -1.86505, -0.782664166666667, 3.00568, -1.91255);
  lines[25] = new Line(-0.782664166666667, 3.00568, -1.91255, -1.43495416666667, 3.27051, -0.62889);
  lines[26] = new Line(-2.67107416666667, 1.59948, -1.90852, -2.63833416666667, 2.41296, -0.66002);
  lines[27] = new Line(-2.67107416666667, 1.59948, -1.90852, -3.09644416666667, 0.1643, -1.93104);
  lines[28] = new Line(-3.09644416666667, 0.1643, -1.93104, -3.55777416666667, -0.41704, -0.63127);
  lines[29] = new Line(-2.29877416666667, -2.09949, -1.89452, -1.05780416666667, -2.90501, -1.88732);
  lines[30] = new Line(-2.29877416666667, -2.09949, -1.89452, -3.07267416666667, -1.83441, -0.65049);
  lines[31] = new Line(-1.05780416666667, -2.90501, -1.88732, -0.660744166666667, -3.49269, -0.60418);
  lines[32] = new Line(1.27598583333333, -2.80293, -1.8419, 2.37990583333333, -1.87877, -1.85464);
  lines[33] = new Line(1.27598583333333, -2.80293, -1.8419, 0.792135833333333, -3.43832, -0.63731);
  lines[34] = new Line(2.37990583333333, -1.87877, -1.85464, 3.02331583333333, -1.69445, -0.58845);
  lines[35] = new Line(3.43308583333333, -0.32732, -0.63384, 3.43322583333333, 0.32671, 0.63357);
  lines[36] = new Line(3.43308583333333, -0.32732, -0.63384, 3.02331583333333, -1.69445, -0.58845);
  lines[37] = new Line(2.57165583333333, 2.35268, -0.59921, 3.02365583333333, 1.6939, 0.58835);
  lines[38] = new Line(2.57165583333333, 2.35268, -0.59921, 1.42294583333333, 3.21388, -0.6447);
  lines[39] = new Line(1.42294583333333, 3.21388, -0.6447, 0.792555833333333, 3.43818, 0.63719);
  lines[40] = new Line(-1.43495416666667, 3.27051, -0.62889, -0.660244166666667, 3.4927, 0.60424);
  lines[41] = new Line(-1.43495416666667, 3.27051, -0.62889, -2.63833416666667, 2.41296, -0.66002);
  lines[42] = new Line(-2.63833416666667, 2.41296, -0.66002, -3.07240416666667, 1.83466, 0.65075);
  lines[43] = new Line(-3.55777416666667, -0.41704, -0.63127, -3.07267416666667, -1.83441, -0.65049);
  lines[44] = new Line(-3.55777416666667, -0.41704, -0.63127, -3.55760416666667, 0.41752, 0.63168);
  lines[45] = new Line(-3.07267416666667, -1.83441, -0.65049, -2.63855416666667, -2.41265, 0.66025);
  lines[46] = new Line(-0.660744166666667, -3.49269, -0.60418, 0.792135833333333, -3.43832, -0.63731);
  lines[47] = new Line(-0.660744166666667, -3.49269, -0.60418, -1.43543416666667, -3.27033, 0.62898);
  lines[48] = new Line(0.792135833333333, -3.43832, -0.63731, 1.42246583333333, -3.21419, 0.64459);
  lines[49] = new Line(3.02331583333333, -1.69445, -0.58845, 2.57130583333333, -2.35318, 0.59916);
  lines[50] = new Line(3.43322583333333, 0.32671, 0.63357, 3.01511583333333, -0.33468, 1.82746);
  lines[51] = new Line(3.43322583333333, 0.32671, 0.63357, 3.02365583333333, 1.6939, 0.58835);
  lines[52] = new Line(3.02365583333333, 1.6939, 0.58835, 2.38000583333333, 1.87903, 1.85433);
  lines[53] = new Line(0.792555833333333, 3.43818, 0.63719, 1.27582583333333, 2.80294, 1.84201);
  lines[54] = new Line(0.792555833333333, 3.43818, 0.63719, -0.660244166666667, 3.4927, 0.60424);
  lines[55] = new Line(-0.660244166666667, 3.4927, 0.60424, -1.05781416666667, 2.90504, 1.88727);
  lines[56] = new Line(-3.07240416666667, 1.83466, 0.65075, -2.29871416666667, 2.09921, 1.89477);
  lines[57] = new Line(-3.07240416666667, 1.83466, 0.65075, -3.55760416666667, 0.41752, 0.63168);
  lines[58] = new Line(-3.55760416666667, 0.41752, 0.63168, -3.09624416666667, -0.16424, 1.9312);
  lines[59] = new Line(-2.63855416666667, -2.41265, 0.66025, -1.43543416666667, -3.27033, 0.62898);
  lines[60] = new Line(-2.63855416666667, -2.41265, 0.66025, -2.67074416666667, -1.5995, 1.90873);
  lines[61] = new Line(-1.43543416666667, -3.27033, 0.62898, -0.782654166666667, -3.00572, 1.91238);
  lines[62] = new Line(1.42246583333333, -3.21419, 0.64459, 2.57130583333333, -2.35318, 0.59916);
  lines[63] = new Line(1.42246583333333, -3.21419, 0.64459, 0.672035833333333, -3.02075, 1.86516);
  lines[64] = new Line(2.57130583333333, -2.35318, 0.59916, 2.53246583333333, -1.68069, 1.86231);
  lines[65] = new Line(3.01511583333333, -0.33468, 1.82746, 2.53246583333333, -1.68069, 1.86231);
  lines[66] = new Line(3.01511583333333, -0.33468, 1.82746, 2.35046583333333, 0.66109, 2.61243);
  lines[67] = new Line(2.38000583333333, 1.87903, 1.85433, 2.35046583333333, 0.66109, 2.61243);
  lines[68] = new Line(2.38000583333333, 1.87903, 1.85433, 1.27582583333333, 2.80294, 1.84201);
  lines[69] = new Line(1.27582583333333, 2.80294, 1.84201, 0.116425833333333, 2.47442, 2.64354);
  lines[70] = new Line(-1.05781416666667, 2.90504, 1.88727, 0.116425833333333, 2.47442, 2.64354);
  lines[71] = new Line(-1.05781416666667, 2.90504, 1.88727, -2.29871416666667, 2.09921, 1.89477);
  lines[72] = new Line(-2.29871416666667, 2.09921, 1.89477, -2.32813416666667, 0.85486, 2.69487);
  lines[73] = new Line(-3.09624416666667, -0.16424, 1.9312, -2.32813416666667, 0.85486, 2.69487);
  lines[74] = new Line(-3.09624416666667, -0.16424, 1.9312, -2.67074416666667, -1.5995, 1.90873);
  lines[75] = new Line(-2.67074416666667, -1.5995, 1.90873, -1.48595416666667, -1.98888, 2.6973);
  lines[76] = new Line(-0.782654166666667, -3.00572, 1.91238, 0.672035833333333, -3.02075, 1.86516);
  lines[77] = new Line(-0.782654166666667, -3.00572, 1.91238, -1.48595416666667, -1.98888, 2.6973);
  lines[78] = new Line(0.672035833333333, -3.02075, 1.86516, 1.38355583333333, -2.03638, 2.64595);
  lines[79] = new Line(2.53246583333333, -1.68069, 1.86231, 1.38355583333333, -2.03638, 2.64595);
  lines[80] = new Line(2.35046583333333, 0.66109, 2.61243, 1.20342583333333, 0.32117, 3.41124);
  lines[81] = new Line(0.116425833333333, 2.47442, 2.64354, 0.0900558333333332, 1.24457, 3.42399);
  lines[82] = new Line(-2.32813416666667, 0.85486, 2.69487, -1.12998416666667, 0.44381, 3.45636);
  lines[83] = new Line(-1.48595416666667, -1.98888, 2.6973, -0.748464166666667, -0.97009, 3.45684);
  lines[84] = new Line(1.38355583333333, -2.03638, 2.64595, 0.701575833333333, -1.03144, 3.42833);
  lines[85] = new Line(1.20342583333333, 0.32117, 3.41124, 0.701575833333333, -1.03144, 3.42833);
  lines[86] = new Line(1.20342583333333, 0.32117, 3.41124, 0.0900558333333332, 1.24457, 3.42399);
  lines[87] = new Line(0.0900558333333332, 1.24457, 3.42399, -1.12998416666667, 0.44381, 3.45636);
  lines[88] = new Line(-1.12998416666667, 0.44381, 3.45636, -0.748464166666667, -0.97009, 3.45684);
  lines[89] = new Line(-0.748464166666667, -0.97009, 3.45684, 0.701575833333333, -1.03144, 3.42833);

}

void draw(){
  
  background(255);
  drawLines();
  rotation();
}

void drawLines(){
  
  for(int i = 0; i < n; i++){
    
    float xs = lines[i].xs * ratio + width / 2;
    float ys = -lines[i].ys * ratio + height / 2;
    float zs = lines[i].zs * ratio;
    
    float xe = lines[i].xe * ratio + width / 2;
    float ye = -lines[i].ye * ratio + height / 2;
    float ze = lines[i].ze * ratio;
    
    line(xs, ys, zs, xe, ye, ze);
  }
}

void rotation(){
  
  for(int i = 0; i < n; i++){
        
    lines[i].roll(0);
    lines[i].pitch(0);
    lines[i].yaw(2);
  }
}

public class Line{
  
  float xs;
  float ys;
  float zs;
  
  float xe;
  float ye;
  float ze;
  
  Line(float xs, float ys, float zs, float xe, float ye, float ze){
    
    this.xs = xs;
    this.ys = ys;
    this.zs = zs;
    this.xe = xe;
    this.ye = ye;
    this.ze = ze;
  }
  
  void roll(float th){
    
    float newXs = this.xs * cos(radians(th)) - this.ys * sin(radians(th));
    float newYs = this.xs * sin(radians(th)) + this.ys * cos(radians(th));
    
    float newXe = this.xe * cos(radians(th)) - this.ye * sin(radians(th));
    float newYe = this.xe * sin(radians(th)) + this.ye * cos(radians(th));
    
    this.xs = newXs;
    this.ys = newYs;
    this.xe = newXe;
    this.ye = newYe;
  }
  
  void pitch(float th){
    
    float newYs = this.ys * cos(radians(th)) - this.zs * sin(radians(th));
    float newZs = this.ys * sin(radians(th)) + this.zs * cos(radians(th));
    
    float newYe = this.ye * cos(radians(th)) - this.ze * sin(radians(th));
    float newZe = this.ye * sin(radians(th)) + this.ze * cos(radians(th));
    
    this.ys = newYs;
    this.zs = newZs;
    this.ye = newYe;
    this.ze = newZe;
  }
  
  void yaw(float th){

    float newZs = this.zs * cos(radians(th)) - this.xs * sin(radians(th));
    float newXs = this.zs * sin(radians(th)) + this.xs * cos(radians(th));
    
    float newZe = this.ze * cos(radians(th)) - this.xe * sin(radians(th));
    float newXe = this.ze * sin(radians(th)) + this.xe * cos(radians(th));
    
    this.zs = newZs;
    this.xs = newXs;
    this.ze = newZe;
    this.xe = newXe;
  }
  
}