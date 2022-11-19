import 'package:diario/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  UserModel? _userFromFirebaseUser(User? user) {
    return user != null ? UserModel(id: user.uid) : null;
  }

  Future signUp(email, password) async {
    try {
      User user = (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      )) as User;
      _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Por favor, insira uma senha forte.');
      } else if (e.code == 'email-already-in-use') {
        print('O email já existe!.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Stream<UserModel?> get user {
    return auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signIn(email, password) async {
    try {
      User? user = (await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      )) as User;
      _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      print(e); //melhorar a mensagem de erro
    } catch (e) {
      print(e); //melhorar a mensagem de erro
    }
  }
}
