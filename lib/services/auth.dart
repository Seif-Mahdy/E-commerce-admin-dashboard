import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  Future<FirebaseUser> signIn(String email, String password,);

  Future<void> signOut();
}

class Auth extends AuthBase {
  final _auth = FirebaseAuth.instance;

  @override
  Future<void> signOut() async {
    return await _auth.signOut();
  }

  @override
  Future<FirebaseUser> signIn(String email, String password,) async {
    return (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
  }

}