class regionNode{
  
  String region;
  Map states;
  
  public regionNode(String r, Map s){
    region = r;
    states = s;
  }
  
  Map getStates(){
    return states;
  }
  
  
}