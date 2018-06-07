import java.util.LinkedList;
import java.util.ArrayList;

class Participation{
  
  Map<Integer, LinkedList> part = new TreeMap<Integer, LinkedList>();
  Scanner scan;
  
 
  public Participation(){
    try{
      scan = new Scanner(new File("Desktop/APData/data/annualParticipation.csv"));
      int count = 0;
      while(scan.hasNext())
      {
        String temp = scan.nextLine();
        String[] line = new String[temp.split(",").length];
        line = temp.split(",");
        
       part.put(Integer.parseInt(line[0]), new LinkedList());
       for(int i = 1; i < line.length; i++)
       {
         part.get(Integer.parseInt(line[0])).add(line[i]);
       }
        
        
      }
      
    }catch(Exception e){
      e.printStackTrace();
      System.out.println(e);
    }
    
  }
  
  void display(){
    
    
  }
  
  
  
}