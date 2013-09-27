int len = 52;
int zoom = 4;
int deck[] = new int[len];

int step = 0;

int colors[] = { color(255, 0, 0), color(0, 255, 0), color(0, 0, 255), color(255) };
//int colors[] = { color(255), color(0) };

void setup() {
  size(zoom*len, 64);
  noStroke();
  background(0);
  
  for(int i=0; i < len; i++) {
    deck[i] = i;
  }
  
  draw_deck();
  saveDeckFrame();
}

void draw() {
  draw_deck();
}

void saveDeckFrame() {
  saveFrame(len+"_"+step+".png");
  step++;
}

void keyPressed() {
  switch(key) {
    case 'i':
      inshuffle();
      saveDeckFrame();
      break;
    case 'o':
      outshuffle();
      saveDeckFrame();
      break;
  }
}

void draw_deck() {
  background(0);
  for(int i = 0; i < len; i++) {
    fill(colors[deck[i]/13%colors.length]);
    rect(i*zoom, 0, i*zoom+zoom, height);
  }
}

void inshuffle() {
  int top[] = new int[len/2];
  int bottom[] = new int[len/2];
  
  for(int i = 0; i < len/2; i++)
    top[i] = deck[i];
  
  for(int i = 0; i < len/2; i++)
    bottom[i] = deck[i+len/2];
    
  for(int i = 0; i < len; i++) {
    if(i%2 == 0) {
      deck[i] = bottom[i/2];
    } else {
      deck[i] = top[i/2];
    }
  }
  
  draw_deck();
}

void outshuffle() {
  int top[] = new int[len/2];
  int bottom[] = new int[len/2];
  
  for(int i = 0; i < len/2; i++)
    top[i] = deck[i];
  
  for(int i = 0; i < len/2; i++)
    bottom[i] = deck[i+len/2];
    
  for(int i = 0; i < len; i++) {
    if(i%2 == 0) {
      deck[i] = top[i/2];
    } else {
      deck[i] = bottom[i/2];
    }
  }
  
  draw_deck();
}
