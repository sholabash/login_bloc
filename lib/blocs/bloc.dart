import 'dart:async';
import './validator.dart';
import 'package:rxdart/rxdart.dart';

//object does not have anything is just default while validator can also be extends direct
class Bloc extends Object with Validators {
  final _email = StreamController<String>.broadcast();
  final _password = StreamController<String>.broadcast();

//add data to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submiValid =>
      CombineLatestStream.combine2(email, password, (e, p) => true);
//change data
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
}

//this is a Global instance bloc it can be export
// final bloc = Bloc();
