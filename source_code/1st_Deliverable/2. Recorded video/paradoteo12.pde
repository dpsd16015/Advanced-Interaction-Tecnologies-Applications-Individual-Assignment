import processing.video.*;

// Step 1. Declare Movie object
Movie movie; 

void setup() {
  size(800, 600);

  // Step 2. Initialize Movie object
  // Movie file should be in data folder
  movie = new Movie(this, "VID_20221104_140946"); 

  // Step 3. Start movie playing
  movie.loop();
}

// Step 4. Read new frames from movie
void movieEvent(Movie movie) {
  movie.read();
}

void draw() {
  background(250);

  // Tinting using mouse location
  tint(mouseX, mouseY, 250);

  // A video image can also be moved, rotated, tinted, resized just as with a PImage.
  translate(width/2,height/2);
  imageMode(CENTER);
  rotate(PI/4);
  image(movie, 0, 0, mouseX, mouseY);
}
