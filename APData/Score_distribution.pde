import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;

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
  
  void display(){
    for(String a: scores.keySet())
    {
      for(int x: scores.get(a).keySet())
      {
        System.out.println(a + ": " + x + " - " + scores.get(a).get(x) + "%");
      }
      System.out.println();
    }
  }

}