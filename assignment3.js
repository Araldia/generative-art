/*I wanted to improve on my previous sketch that generated different coloured shapes.
 The idea is that clicking will generate a shape at the click location, coloured by the global variables.
 I wanted to use 'c' keypress to clear the screen and 's' to save an image. 
 
 MOUSE
 click and drag : draw
 
 KEYBOARD
 c : clear screen
 s : save png
 
 */

//Global Variables
//define main palettes
color[] reds = {
  #f50a24, #d5000e, #ff574d, #ff574d, #ed1429, #800009
};
color[] oranges = {
  #f7b81c, #ffdd00, #ff8b00, #ff4f00, #f67d00, #802200
};
color[] yellows = {
  #ffd62c, #e8d129, #fff53a, #dbe829, #c8ff51, #fff700
};
color[] greens = {
  #009b42, #72c900, #0ab300, #9ed927, #008a46, #004d26
};
color[] lightblues = {
  #00bae5, #2f79ff, #74d1ff, #13a3f7, #006eeb, #003380
};
color[] darkblues = {
  #6155ff, #8582ff, #4d00f7, #6924ff, #7466ff, #351280
};
color[] purples = {
  #5f189e, #8c3db8, #a83ac5, #a352cc, #6d3cc5, #511273
};
color[] pinks = {
  #e83d56, #f74179, #e63262, #cd007f, #f94e91, #800046
};
//define array for palettes
color[] colors[] = {
  reds, oranges, yellows, greens, lightblues, darkblues, purples, pinks
};
//define how big each section is, play with this to make the colour bands wider or thinner
//eg int[] widths = {100, 350, 150, 50, 200, 450, 150, 50};
int[] widths = {
  200, 200, 200, 200, 200, 200, 200, 200
};
//define where each next integer starts
int[] xwidths = new int[widths.length];
int prevX;
//datatype for colour values
color fillcol;
//floats
float x, w;
float y, h;
float counter = 0;

//setup()
void setup() {
  size(1200, 600);
  background(0);
  frameRate(10);
  prevX = 0;
  for (int z=0; z<widths.length; z++) {
    xwidths[z] = prevX;
    //floor is a type of rounding, picking less than or equal to
    prevX = prevX + floor(widths[z] * width/1600);
  }
}
//draw()
//this is the looping element, the circles up to the counter amount
void draw() {
  if (mousePressed) {
    noStroke();
    //size
    w = random(20, 100);
    h = w;

    //location
    x = mouseX;
    y = mouseY;

    //colour
    for (int z=0; z<widths.length; z++) {
      if (x > xwidths[z]) {
        //round is rounding picking closest integer
        fillcol = colors[z][round(random(5))];
      }
    }

    fill(fillcol, (50+random(100)));
    ellipse(mouseX, mouseY, w, h);
  }
}

//keyPressed()

void keyReleased() {
  if (key == 'c' || key == 'C') background(0);
  if (key == 's' || key == 'S') saveFrame("screenshot-###.png");
}
