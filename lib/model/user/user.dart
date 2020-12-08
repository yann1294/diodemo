import 'package:diodemo/model/user/location.dart';
import 'package:diodemo/model/user/name.dart';
import 'package:diodemo/model/user/picture.dart';


class User {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Picture picture;

  User(this.gender, this.name, this.location, this.email, this.picture);

  User.fromJson(Map<String, dynamic> json)
      : gender = json["gender"],
        name = Name.fromJson(json["name"]),
        location = Location.fromJson(json["location"]),
        email = json["email"],
        picture = Picture.fromJson(json["picture"]);

}