
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
  CreateStatic(40,70,5);
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
  
  // text 104.52
  //changeFrequency("104.52");
  //tune button
  fill(0, 0,0);
  rect(500,422, 90, 25);
  fill(161,242,139);
  textSize(16);
  text("- TUNE +", 508, 440);
  
  
  if(mousePressed){
    if(mouseX>500 && mouseX <590 && mouseY>422 && mouseY <465){
       println("The mouse is pressed and over the button");
       fill(0);
       currentpic++;
    }
  }
  
  if (currentpic == 1)//tunenumber >= 90 && tunenumber <=92
  {
    changeFrequency("90.2");
    Picture2();
  } 
  else if (currentpic == 2) //tunenumber >=96 && tunenumber <= 98
  {
    changeFrequency("98.5");
    Picture3();
  } 
  else if (currentpic == 3) //tunenumber >= 101 && tunenumber <= 103
  {
    changeFrequency("110.9");
    Picture4();
  }
  else {
    currentpic = 0;
  }

}

void changeFrequency(String frequency) {
  textSize(30);
  fill(161,242,139);
  text(frequency,425,390);
}

void Scene1()
{
    currentScene = 1;
    background(17, 62, 19);
    fill(255,0,0);
    rect(330,150,150,75);
    fill(0, 0, 0);
    textSize(39);
    text("Call", 372,200);
    //start with calling screen
    //arrow buttons that change persons picture
}

void Scene2()
{
  fill(66, 66, 66);
   
  //bouncing square across the screen

  rect(x, 200, z, w);
  x += xSpeed;
  if (x + w > width || x < 0)
  {
    xSpeed = - xSpeed;
  }
}

void hoverImage(String name, String occupation) 
{
  if( mouseX > 20 && mouseY > 100 && mouseX < 220 && mouseY < 450)
  {
    String n = "Name: " + name;
    String occ = "Occupation : " + occupation;
    fill(0,0,0);
    rect(20,350,200,100);
    fill(161,242,139);
    textSize(15);
    text(n, 30, 400);
    text(occ, 30, 415);
  }   
}

void CreateStatic(int sizeX, int sizeY, int squareSize)
{
  // create static
  int x = 20;
  int y = 100;
  for(int i = 0; i < sizeY; i++)
  {
    for(int j = 0; j < sizeX; j++)
    {
      float rand = (int)(Math.random() * 2);
      if (rand == 1)
      {
        fill(0,0,0);
      }
      else fill(255,255,255);
      rect(x,y,squareSize,squareSize);
      x += squareSize;
    }
    x = 20;
    y += squareSize;
  }
}
 void Picture2()
  {
    //info
    fill(0,0,0);
    rect(20,350,200,100);
    hoverImage("Clayton","Tech");
    //image
    image(jmg,20,100);
    //textbox
    fill(0,0,0);
    rect(250,500,350,60);
     fill(161,242,139);
     textSize(25);
     text("\"What's the situation Snake\"", 260, 540);
  }
  void Picture3()
  {
    //info
    fill(0,0,0);
    rect(20,350,200,100);
    hoverImage("Gary","Hacker");
    //image
    image(kmg,20,100);
    //textbox
    fill(0,0,0);
    rect(250,500,350,60);
    fill(161,242,139);
    textSize(25);
    text("\"Snake where are you?\"", 260, 540);
  }
  void Picture4()
  {
    //info
    fill(0,0,0);
    rect(20,350,200,100);
    hoverImage("Ronin","??");
    //image
    image(lmg,20,100);
    //textbox
    fill(0,0,0);
    rect(250,500,350,60);
    fill(161,242,139);
    textSize(25);
    text("\"Solid, do you read me?\"", 260, 540);
    
  }