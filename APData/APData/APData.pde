Score a = new Score();
Participation b = new Participation();
Region c = new Region();
boolean score;
boolean participation;
boolean region;

void setup(){
  size(1800, 1000);
  
}


void draw(){
  background(0);
  rectMode(CENTER);
  textAlign(CENTER);
  fill(255);
  textSize(100);
  text("AP Test Data 2017", 900, 100);
  
  fill(255);
  rect(600, 300, 400, 200);
  rect(1200, 300, 400, 200);
  rect(900, 600, 400, 200);
  
  fill(0);
  textSize(20);
  text("Score Distribution\nPer Exam", 600, 300);
  text("AP Test Participation\nFrom 1956", 1200, 300);
  text("Number Of Tests Taken\nBy Region And State", 900, 600);
  
  if(score)
  {
    a.display();
  }
  if(participation)
  {
    b.display();
  }
  if(region)
  {
    c.display();
  }
  
}

void mouseClicked(){
  if(score == false && participation == false && region == false && mouseX >= 400 && mouseX <= 800 && mouseY >= 200 && mouseY <= 400)
  {
    score = true;
    return;
  }
  
  if(score == false && participation == false && region == false &&mouseX >= 1000 && mouseX <= 1400 && mouseY >= 200 && mouseY <= 400)
  {
    participation = true;
    return;
  }
  
  if(score == false && participation == false && region == false &&mouseX >= 700 && mouseX <= 1100 && mouseY >= 500 && mouseY <= 700)
  {
    region = true;
    return;
  }
  
  if(score == true && mouseX >= 500 && mouseX <= 1300 && mouseY >= 300 && mouseY <= 700)
  {
    APResearch = true;
    return;
  }
}