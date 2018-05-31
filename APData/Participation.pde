import java.util.LinkedList;
import java.util.ArrayList;

class Participation{
  
  ArrayList<LinkedList> part = new ArrayList<LinkedList>();
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
        
        
      }
      
    }catch(Exception E){
      E.printStackTrace();
    }
    
  }
  
  
  
}