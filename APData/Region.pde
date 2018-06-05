import java.util.ArrayList;

class Region{
   ArrayList<regionNode> data = new ArrayList<regionNode>();
   Scanner scan;
  
  public Region(){
    try{
      scan = new Scanner(new File("Desktop/APData/data/Region.csv"));
      scan.useDelimiter(",");
      
      while(scan.hasNext())
      {
        String temp = scan.next();
        
        if(temp.matches("[A-Z]+[A-Z]"));
          data.add(new regionNode(temp, new TreeMap()));
          
        data.get(data.size() - 1).getStates().put(scan.next(), scan.next());
      }
    }catch(Exception e){
      e.printStackTrace();
    }
  }
  
  void display(){
    
  }
}