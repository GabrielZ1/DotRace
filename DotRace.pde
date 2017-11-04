int X =100;
void setup() {
    size(800, 200);
}

void draw() {
  background(200);
    //3. make it a nice color
fill (#4CD3DE);
    //4. if the mouse is pressed...
if (mousePressed){X=X+20;}
    //5. ... change the X co-ordinate so that the dot moves to the right
    //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
    ellipse (X,100,100,100);
    //6. Make your dot move really fast so that it can win the race 
     
    //7. Use this method to play a ding when your dot crosses the finish line. 
   if (X==(800)) {
   playSound();
   }
}


import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("ding.wav");
        sound.trigger();
        soundPlayed = true;
    }
}