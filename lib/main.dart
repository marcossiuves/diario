import 'package:diario/main/home.dart';
import 'package:diario/models/User.dart';
import 'package:diario/screens/auth/signup.dart';
import 'package:diario/screens/wrapper.dart';
import 'package:diario/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return StreamProvider<UserModel?>.value(
              value: AuthService().user,
              child: MaterialApp(
                home: Wrapper(),
                ),
              initialData: ,
              );
        }

        return Text("Loading");
      },
    );
  }
}
