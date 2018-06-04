import java.util.ArrayList;

class Region{
   ArrayList<regionNode> data = new ArrayList<regionNode>();
   Scanner scan;
  
  public Region(){
    try{
      scan = new Scanner(new File("Desktop/APData/data/Region.csv"));
      
    }catch(Exception e){
      e.printStackTrace();
    }
  }
}