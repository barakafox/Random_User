class UserModel{
  Map<String,dynamic> name;
  Map<String,dynamic> picture;

  UserModel({required this.name,required this.picture});

  static List<UserModel>fromjson(Map<String,dynamic> json){
    return (json['results'] as List).map((item)=>
        UserModel(name: item['name'], picture: item['picture'])).toList();
  }
}