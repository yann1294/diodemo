import 'package:diodemo/model/user/user.dart';


class UserResponse {
  final List<User> results;
  final String error;

  UserResponse(this.results, this.error);

  // projection to List and map function which maps each row to User class.
  UserResponse.fromJson(Map<String, dynamic> json)
      : results =
  (json["results"] as List).map((i) => new User.fromJson(i)).toList(),
        error = "";
  // connection error handling
  UserResponse.withError(String errorValue)
      : results = List(),
        error = errorValue;
}