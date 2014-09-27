//The childlike effect of creating images from basic shapes 
//inspired me to create a whimsical suburban scene
//setup
size(600, 600);
background(#AFF9FF);

//hills
strokeWeight(2);
fill(#7FC18A);
arc(200, 440, 300, 200, 3.14, 6.28);
fill(#48F7A1);
arc(100, 440, 230, 150, 3.14, 6.28);
fill(#7FC18A);
arc(450, 490, 500, 300, 3.14, 6.28);
fill(#48F7A1);
arc(500, 440, 230, 100, 3.14, 6.28);

//grass
noStroke();
fill(#48F7A1);
rect(0, 430, 600, 200);

//sun
stroke(#FFE70D);
strokeWeight(3);
line(500, 50, 450, 150);
stroke(#FFE70D);
strokeWeight(2);
line(500, 50, 400, 50);
stroke(#C9B500);
strokeWeight(3);
line(500, 50, 550, 150);
stroke(#FF920D);
strokeWeight(3);
line(500, 50, 600, 50);
stroke(#FAE600);
strokeWeight(4);
line(500, 50, 550, 0);
stroke(#FFAA40);
strokeWeight(2);
line(500, 50, 450, 0);

//sunbody
fill(#FFE70D);
ellipse(500, 50, 100, 100);

//clouds
noStroke();
fill(#FFFFFF);
arc(200, 140, 300, 200, 3.14, 6.28);
fill(#FFFFFF);
arc(70, 140, 230, 150, 3.14, 6.28);
fill(#FFFFFF);
arc(350, 190, 500, 300, 3.14, 6.28);
fill(#FFFFFF);
arc(150, 220, 230, 100, 3.14, 6.28);


//house
fill(#FF8000);
stroke(#000000);
strokeWeight(1);
rect(200, 300, 200, 200);

stroke(#000000);
fill(#DB4600);
strokeWeight(1);
triangle(200, 300, 300, 200, 400, 300);

//door
fill(#00FFCE);
rect(280, 440, 40, 60);

//windows
fill(#B9FFF2);
rect(330, 330, 40, 30);
fill(#B9FFCA);
rect(230, 430, 40, 30);
fill(#FFB9F8);
rect(330, 430, 40, 30);
fill(#CEB9FF);
rect(230, 330, 40, 30);

stroke(#000000);
fill(#7B5A8E);
quad(265, 330, 235, 330, 245, 360, 255, 360);
fill(#5A8E60);
quad(265, 430, 235, 430, 245, 460, 255, 460);
fill(#5F5A8E);
quad(365, 330, 335, 330, 345, 360, 355, 360);
fill(#8E5A5C);
quad(365, 430, 335, 430, 345, 460, 355, 460);


//kite
fill(#FF0000);
quad(160, 120, 200, 100, 200, 150, 160, 170);
line(160, 120, 200, 150);
line(200, 100, 160, 170);
//string
noFill();
arc(140, 220, 100, 100, 3, 5);
//bow 1
stroke(#000000);
fill(#1800FF);
strokeWeight(2);
beginShape();
vertex(150, 185);
vertex(160, 170);
vertex(150, 155);
vertex(140, 175);
vertex(160, 170);
vertex(170, 180);
vertex(150, 185);
endShape();
//string
noFill();
stroke(#000000);
strokeWeight(1);
arc(57, 265, 100, 100, 5.5, 7);
//tetherline
line(182, 135, 410, 530);
//bow 2
stroke(#000000);
fill(#9C00FF);
strokeWeight(2);
beginShape();
vertex(80, 200);
vertex(90, 225);
vertex(100, 220);
vertex(90, 240);
vertex(90, 225);
vertex(70, 220);
vertex(80, 200);
endShape();

//fence
stroke(#000000);
fill(#8B4F00);
strokeWeight(2);
quad(100, 560, 270, 560, 270, 490, 100, 490);
fill(#C67100);
strokeWeight(2);
triangle(100, 490, 200, 450, 200, 490);
fill(#8B4F00);
strokeWeight(2);
quad(330, 560, 460, 560, 460, 490, 330, 490);
fill(#643A01);
strokeWeight(2);
triangle(400, 450, 400, 490, 460, 490);

//path
fill(#AAAAAA);
strokeWeight(2);
quad(290, 500, 310, 500, 340, 600, 260, 600);

//person
strokeWeight(1);
//neck and spine
line(300, 460, 300, 485);
//shoulders
line(295, 470, 305, 470);
//left arm
line(295, 470, 290, 480);
//right arm
line(305, 470, 310, 480);
//hips
line(295, 485, 305, 485);
//left leg
line(295, 485, 295, 510);
//right leg
line(305, 485, 305, 510);
fill(#8E450D);
//head
ellipse(300, 460, 10, 10);
