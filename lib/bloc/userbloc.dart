import 'package:diodemo/model/userResponse.dart';
import 'package:diodemo/repository/userRepository.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc {
  final UserRepository _repository = UserRepository();
  final BehaviorSubject<UserResponse> _subject =
  BehaviorSubject<UserResponse>();

  //gets data from repository and publish them
  getUser() async {
    UserResponse response = await _repository.getUser();
    _subject.sink.add(response);
  }

  //called, when UserBloc will be no longer used
  dispose() {
    _subject.close();
  }

  //turns last emitted value when new observer joins.
  BehaviorSubject<UserResponse> get subject => _subject;

}
final bloc = UserBloc();