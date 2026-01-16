//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var trainX = -300;
var trainSpeed = 2;
var sunRay = 1;


//🟢Draw Procedure - Runs on Repeat
draw = function(){
 
  background(255,255,255,0);
strokeWeight(1);
stroke(0,0,0);
  // update train position
  trainX += trainSpeed;
  if (trainX > width + 200) {
    trainX = -300;
  }


 //train 
fill(132,232,230);
ellipse(trainX,350,250,50);

//window 1
fill(255,255,255);
ellipse(trainX - 71,349,25,25);

//window 2
fill(255,255,255);
ellipse(trainX,345,25,25);

//window 3
fill(255,255,255);
ellipse(trainX + 55,348,25,25);

//sun
fill (253,216,8)
triangle(0,0,0,89,89,0);

//sun lines
strokeWeight(0+sunRay)
stroke(253,216,8);
line(54,59,102,100);
line (89,29,176,48);
line (21,94,39,161);

if(sunRay<30){sunRay+=.1;}
if(sunRay>=30){sunRay = 0;}


 //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
