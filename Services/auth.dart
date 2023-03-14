import 'package:firebase_auth/firebase_auth.dart';
import 'package:memomaster/Models/User.dart';
import 'package:memomaster/Services/Database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  MyUser? _userFromFirebaseUser(User user) {
    return user != null ? MyUser(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<MyUser?> get user {
    return _auth.authStateChanges().map((User? user) => _userFromFirebaseUser(user!));
  }


  // sign in with email and password
  Future signIn (String email,  String password) async {

    try
    {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user!);
    }
    catch (e)
    {
      null;
    }
  }

  // register with email and passowrd
  Future signUp (String email,  String password) async {
    try
    {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;

      //create a document for the specific user
      await Database_service (uid: user!.uid).updateUserData('New member', 0);
      return _userFromFirebaseUser(user); //aici era !user inainte sa scriu linia de mai sus
    }
    catch (e)
    {
      null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    }
    catch (e) {
      return null;
    }
  }
}