class MapData{
  String email,first_name,last_name,avatar;
  int id;

  MapData(this.id,this.email,this.first_name,this.last_name,this.avatar);

  MapData.fromJson(Map<String,dynamic> json){
    Map<String,dynamic> value =json['data'];
    id=value['id'];
    email=value['email'];
    first_name=value['first_name'];
    last_name=value['last_name'];
    avatar=value['avatar'];
  }


}