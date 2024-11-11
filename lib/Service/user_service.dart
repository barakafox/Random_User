import 'package:dio/dio.dart';
import 'package:random_user/Models/user_model.dart';

class UserService{
  static Dio dio = Dio();

  static Future<List<UserModel>> fetchData() async{
    try{
      Response response = await dio.get('https://randomuser.me/api/?results=20');
      if(response.statusCode == 200){
        return UserModel.fromjson(response.data);
      }else{
        throw Exception('Error');
      }
    }
     catch(e){
      throw Exception('Invalid Is $e');
     }
  }
}