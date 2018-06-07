import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;

boolean APResearch = false;

class Score {
  Map<String, HashMap<Integer, Double>> scores = new TreeMap<String, HashMap<Integer, Double>>();
  Scanner scan;

  public Score() {
    try {
      scan = new Scanner(new File("Desktop/APData/data/scores.csv"));


      while (scan.hasNext())
      {
        String[] line = new String[6];
        line = scan.nextLine().split(",");
        scores.put(line[0], new HashMap());

        int count = 1;
        for (int i = 5; i > 0; i--)
        {
          scores.get(line[0]).put(i, Double.parseDouble(line[count]));
          count++;
        }
      }
    }
    catch(Exception e) {
      e.printStackTrace();
      System.out.println("no");
    }
  }

  void display() {
    /*for(String a: scores.keySet())
     {
     for(int x: scores.get(a).keySet())
     {
     System.out.println(a + ": " + x + " - " + scores.get(a).get(x) + "%");
     }
     System.out.println();
     }*/

    int scoreX = 140;
    int scoreY = 850;
    int perX = 80;
    int perY = 800;

    //button
    background(0);
    fill(255);
    
    rect(900, 500, 800, 400);
    
    textSize(100);
    fill(0);
    text("AP Research", 900, 500);


    /*for(String clas: scores.keySet())
     {
     text(clas, classX, classY);
     classX += 47;
     }*/

    //Research graph
    if (APResearch == true)
    {
      background(0);
      stroke(255);
      line(100, 100, 100, 800);
      line(100, 800, 1700, 800);

      fill(255, 0, 0);
      
      
      textSize(50);
      text("Score", 900, 950);
      for(int i = 1; i <= 5; i++)
      {
        text(i, scoreX, scoreY);
        scoreX += 380;
      }
      
      text("%", 25, 450);
      textSize(10);
      for(int i = 0; i <= 65; i++)
      {
        text(i, perX, perY);
        perY -= 10;
      }
      
      
    }
  }
}