import 'package:diodemo/model/userResponse.dart';
import 'package:diodemo/repository/userApiProvider.dart';

class UserRepository{
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser(){
    return _apiProvider.getUser();
  }
}