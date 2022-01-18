class Player{
  String name;
  List<int> selectedDiceFaces = [];
  List<int> validFaces = [1,2,3,4,5,6];

  Player(this.name);

  void setSelectedFaces(List<int> selectedDiceFaces){

    for(var item in selectedDiceFaces){
      if(!validFaces.contains(item)){
        throw Exception('Invalid data');
      }
    }
    this.selectedDiceFaces = selectedDiceFaces;
  }}