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
  
  buttons[0] = new Button(100, height - 80, 100, 50, color(100, 200, 200));
  buttons[1] = new Button(250, height - 80, 100, 50, color(100, 200, 255));
}

void draw() {
  background(255);
  
  if(isPlaying){
    generate();
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

// reset current when mouse is pressed
void mousePressed() {

  int x = mouseX;
  int y = mouseY;
  
  if(buttons[0].isClicked(x, y)){
    
    isPlaying = !isPlaying;
    
  }else if(!isPlaying && buttons[1].isClicked(x, y)){
    
    randomCells();
  }
}

// Fill current randomly
void randomCells() {
  for (int i = 0; i < columns; i++) {
    for (int j = 0; j < rows; j++) {
      // Lining the edges with 0s
      if (i == 0 || j == 0 || i == columns-1 || j == rows-1) current[i][j] = 0;
      // Filling the rest randomly
      else current[i][j] = floor(random(2));
      next[i][j] = 0;
    }
  }
}

void generate() {

  // Loop through every spot in our 2D array and check spots neighbors
  for (int x = 1; x < columns - 1; x++) {
    for (int y = 1; y < rows - 1; y++) {
      // Add up all the states in a 3x3 surrounding grid
      int neighbors = 0;
      for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
          neighbors += current[x+i][y+j];
        }
      }

      // A little trick to subtract the current cell's state since
      // we added it in the above loop
      neighbors -= current[x][y];
      // Rules of Life
      if      ((current[x][y] == 1) && (neighbors <  2)) next[x][y] = 0;           // Loneliness
      else if ((current[x][y] == 1) && (neighbors >  3)) next[x][y] = 0;           // Overpopulation
      else if ((current[x][y] == 0) && (neighbors == 3)) next[x][y] = 1;           // Reproduction
      else                                             next[x][y] = current[x][y]; // Stasis
    }
  }

  // Swap!
  int[][] temp = current;
  current = next;
  next = temp;
}
