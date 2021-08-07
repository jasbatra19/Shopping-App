import 'package:firebase_auth/firebase_auth.dart';
import 'package:shoppingapp/services/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Myuser? _userFromFirebase(User? user) {
    return user != null ? Myuser(user.uid) : null;
  }

  Stream<Myuser?> get streamUser {
    return _auth.authStateChanges().map((_userFromFirebase));
  }

  //sign in anonymously
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user!;

      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email and pass
  Future signInWithEmailPass(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register w email and password
  Future registerWithEmailPass(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user!;
      return _userFromFirebase(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //signout
  // ignore: non_constant_identifier_names
  Future SignOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
