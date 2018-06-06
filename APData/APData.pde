Score a = new Score();

void setup(){
  size(1200, 800);
  
}


void draw(){
  background(0);
  rectMode(CENTER);
  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("AP Test Data 2017", 600, 100);
  
  fill(255);
  rect(350, 300, 400, 200);
  rect(850, 300, 400, 200);
  rect(600, 600, 400, 200);
  
  fill(0);
  textSize(20);
  text("Score Distribution\nPer Exam", 350, 300);
  text("AP Test Participation\nFrom 1956", 850, 300);
  text("Number Of Tests Taken\nBy Region And State", 600, 600);
  
}

void mouseClicked(){
  if(mouseX >= 150 && mouseX <= 550 && mouseY >= 200 && mouseY <= 400)
  {
    Score a = new Score();
    a.display();
  }
  
  if(mouseX >= 650 && mouseX <= 1050 && mouseY >= 200 && mouseY <= 400)
  {
    Participation a = new Participation();
    a.display();
  }
  
  if(mouseX >= 400 && mouseX <= 800 && mouseY >= 500 && mouseY <= 700)
  {
    Region a = new Region();
    a.display();
  }
}