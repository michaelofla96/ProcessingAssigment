void setup ()
{
  size(850,850);
  hmg = loadImage("solidsnake.jpg");
  img = loadImage("foxhound.jpg");
  jmg = loadImage("clayton.jpg");
  kmg = loadImage("hacker.jpg");
  lmg = loadImage("ronin.jpg");
  
}
PImage hmg, img, jmg, kmg, lmg;  
int y;
float x = 0;
float xSpeed = 1;
float w = 20;
float z = 40;
int currentpic = 0;
int currentScene;
//int tunenumber;
void draw()
{
 // background(img);
 
  
  background(48,88,42);
  //middle codec picture
  fill(0,0,0);
  rect(270,200,280,200);
  // Bars
 //m
 if (frameCount % 50 == 0)
 {
   fill(random(255,255),random(255,255),random(255,255));
 }
  rect(270,200,260,20);
  if (frameCount % 40 == 0)
 {
   fill(random(255,255),random(255,255),random(255,255));
 }
  rect(270,220,240,20);
  if (frameCount % 30 == 0)
 {
   fill(random(255,255),random(255,255),random(255,255));
 }
  rect(270,240,220,20);
  if (frameCount % 20 == 0)
 {
   fill(random(255,255),random(255,255),random(255,255));
 }
  rect(270,260,200,20);
  if (frameCount % 10 == 0)
 {
   fill(random(255,255),random(255,255),random(255,255));
 }
 //bars
  rect(270,280,180,20);
  fill(252,252,252);
  rect(270,300,160,20);
  rect(270,320,140,20);
  rect(270,340,120,20);
  rect(270,360,100,20);
  //right picture
  rect(20,100,200,350);
  //left picture
  fill(0,0,0);
  rect(600,100,200,350);
  image(hmg,600,100);
  fill(161,242,139);
  textSize(25);
  text("Solid Snake", 620, 440);
  //PTT
  fill(0, 0,0);
  rect(350,100,120,50);
  textSize(30);
  fill(161,242,139);
  text("PTT", 380,135 );
  //lines
  //top left, middle left
  line(335,100,230,100);
  line(335,150,230,150);
  //top right, middle right
  line(485,100,590,100);
  line(485,150,590,150);
  //lines bottom
  line(230,450,590,450);
  line(230,420,590,420);
  //button right
  ellipse(245,290,30,20);
  //button left
  ellipse(575,290,30,20);
  textSize(30);
  fill(161,242,139);
  text("104.52",425,390);
  //tune button
  fill(0, 0,0);
  rect(500,422, 90, 25);
  fill(161,242,139);
  textSize(16);
  text("- TUNE +", 508, 440);


/*
  if (mousePressed == true)
  {
    Scene1();
  }
  if (mousePressed == false)
  {
    Scene2();
  }
 */
}