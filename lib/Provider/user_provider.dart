import 'package:flutter/material.dart';
import 'package:random_user/Models/user_model.dart';
import 'package:random_user/Service/user_service.dart';

class UserProvider extends ChangeNotifier{
  List<UserModel>? userModel;

  GetData() async{
    userModel = await UserService.fetchData();
    notifyListeners();
  }
}