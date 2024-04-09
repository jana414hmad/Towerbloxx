//eksamens project

import fisica.*; 

  

FBox boxButton; 
  
FWorld world; 

  

color buttonColor = #155AAD; 

color hoverColor = #55AA11; 

color bodyColor = #6E0595; 

  

void setup() { 

  size(400, 400); 

  smooth(); 

  

  Fisica.init(this); 

  

  world = new FWorld(); 

  world.setEdges(); 

  world.remove(world.left); 

  world.remove(world.right); 

  world.remove(world.top); 

  

  boxButton = new FBox(40, 40); 

  boxButton.setPosition(width/4, 100); 

  boxButton.setStatic(true); 

  boxButton.setFillColor(buttonColor); 

  boxButton.setNoStroke(); 

  world.add(boxButton); 
  

} 

  

void draw() { 

  background(255); 

  

  world.step(); 

  world.draw(); 

} 

  

void mousePressed() { 

  FBody pressed = world.getBody(mouseX, mouseY); 

  if (pressed == boxButton) { 

    FBox myBox = new FBox(40, 40); 

    myBox.setPosition(width/4, 200); 

    myBox.setRotation(random(TWO_PI)); 

    myBox.setVelocity(0, 200); 

    myBox.setFillColor(bodyColor); 

    myBox.setNoStroke(); 

    world.add(myBox); 

  }  

  } 


   

void keyPressed() { 

  try { 

    saveFrame("screenshot.png"); 

  }  

  catch (Exception e) { 

  } 

} 
