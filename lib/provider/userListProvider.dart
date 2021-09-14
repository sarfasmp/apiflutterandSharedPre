import 'dart:convert';

import 'package:api_sharedepfrs/model/userListModel.dart';
import 'package:api_sharedepfrs/model/userListSecond.dart';
import 'package:api_sharedepfrs/ui/userListUi.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserListProvider extends ChangeNotifier {
  // UserListProvider(){
  //   //fetchAlbum();
  // }
  Users? _userListOne;
  Users? get userListOne => _userListOne;

  UserListSecond? _userListSecond;
  UserListSecond? get userListSecond => _userListSecond;
  // Future fetchAlbum() async{
  //   http.Response? response= await http.get(Uri.parse('https://reqres.in/api/users?page=2')) ;
  //    var data=jsonDecode(response.body);
  //
  //    _userListSecond=Users.fromJson(response.headers);
  //    print(data);
  //     print(_userListSecond);
  // }

  Dio dio = Dio();
  late Response response;

  fetchUsingDio() async {
    dio.options.baseUrl = 'https://reqres.in';
    try {
      response = await dio.get('/api/users?page=2');
      print("using dio");
      print("List one");
      // _userListOne=Users.fromJson(response.data);
      // print(_userListOne);
      print(response);
      print("List Second");

      _userListSecond = UserListSecond.fromJson(response.data);
      print(_userListSecond);
      notifyListeners();
    } catch (e) {}
  }
}
