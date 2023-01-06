int w;
int columns;
int rows;
int[][] current;
int[][] next;

boolean isPlaying = false;

Button[] buttons = new Button[2];

void setup() {
  size(1200, 700);
  w = 30;

  // Calculate columns and rows
  columns = floor(width/w);
  rows = floor((height - 100) / w);
  
  current = new int[columns][rows];
  next = new int[columns][rows];
  
  buttons[0] = new Button(300, height - 80, 100, 50, color(100, 200, 200), "Start");
  buttons[1] = new Button(450, height - 80, 100, 50, color(100, 200, 255), "Random");
}

void draw() {
  background(255);
  
  if(isPlaying){
    
    generate();
    
    fill(0, 255, 200);
    text("Playing", 50, height - 80);
    
  }else{
    
    fill(255, 100, 100);
    text("Stopped", 50, height - 80);
  }
  
  for(Button b: buttons){
    b.renderShape();
  }
  
  // Render Current
  for(int i = 0; i < columns; i++) {
    for(int j = 0; j < rows; j++) {
      
      if(current[i][j] == 1){
        fill(0);
      }else{
        fill(255);
      }
       
      stroke(220);
      rect(i * w, j * w, w - 1, w - 1);
    }
  }

}

void mousePressed() {

  int x = mouseX;
  int y = mouseY;
  
  if(buttons[0].isClicked(x, y)){
    
    isPlaying = !isPlaying;
    
    if(isPlaying){
      
      buttons[0].bText = "Stop";
      
    }else{
      
      buttons[0].bText = "Start";
    }
    
    buttons[1].enable = !isPlaying;
    
  }else if(!isPlaying && buttons[1].isClicked(x, y)){
    
    randomCells();
    
  }else if(!isPlaying){
    
    int i = x / w;
    int j = y / w;
    
    if(!(i == 0 || j == 0 || i == columns-1 || j == rows-1)){
      
      if(current[i][j] == 1){
      
        current[i][j] = 0;
      
      }else{
      
        current[i][j] = 1;
      }
    }

  }
}

void randomCells() {
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {

      if (i == 0 || j == 0 || i == columns-1 || j == rows-1){
      
        current[i][j] = 0;
        
      }else{
        current[i][j] = floor(random(2));
        next[i][j] = 0;
      }
    }
  }
}

void generate() {

  for (int x = 1; x < columns - 1; x++) {
    for (int y = 1; y < rows - 1; y++) {

      int neighbors = 0;
      for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
          neighbors += current[x+i][y+j];
        }
      }

      neighbors -= current[x][y];
      
      if(
        current[x][y] == 1 && (
          neighbors < 2 ||
          neighbors >  3
        )
      ){
        
        next[x][y] = 0;
        
      }else if(current[x][y] == 0 && neighbors == 3){
        
        next[x][y] = 1;
        
      }else{
        
        next[x][y] = current[x][y];
      }

    }
  }

  // Swap
  int[][] temp = current;
  current = next;
  next = temp;
}
