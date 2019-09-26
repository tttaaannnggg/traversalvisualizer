import java.util.*;
int[][] field;
Visitor traveller;

void setup(){
  //populate field
  //we'll switch over to making a field class, prolly
  field = new int[10][10];
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < 10; j++){
      field[i][j] = 1;
    }
  }
  traveller = new Visitor(new Position(0,0));
}

void draw(){
  traveller.propagate();
}

class Visitor{
  //should help to deduplicate work
  Set<String> visited;
  //list of positions for our traversal feelers
  ArrayList<Position> positions;
  Visitor(Position a){
    visited = new HashSet<String>();
    positions = new ArrayList<Position>();
    positions.add(a);
  }
  //traverse one step through the thing
  void propagate(){
  ArrayList<Position> q = new ArrayList<Position>();
    for (int i = 0; i < positions.size(); i++){
      Position cur = positions.get(i);
      q.add(cur);
    }
  }
}


//holds xy coords
class Position{
  int x;
  int y;
  Position(int xx, int yy){
    x = xx;
    y = yy;
  }
}
