import 'package:firebase_auth/firebase_auth.dart';

class FireBD{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in with email & password

  //register with email & password

  Future<String> signUp(String email, String password) async {
    print("$email , $password");
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  //sign out

}