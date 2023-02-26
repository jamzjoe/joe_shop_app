import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  Future createUserWithEmailAndPassword(String email, String password) async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
  }
}
