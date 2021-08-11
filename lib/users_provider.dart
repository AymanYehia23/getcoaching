import 'package:flutter/material.dart';
import 'package:getcoaching/dio_helper.dart';
import 'package:getcoaching/user_model.dart';

class Users with ChangeNotifier{

  UserList? userList;

  void getData(){
    DioHelper.getData().then((value) {
      userList = UserList.fromJson(value.data);
      notifyListeners();
    }).catchError((error){
      print(error);
    });
  }
}