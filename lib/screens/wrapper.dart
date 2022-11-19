import 'package:diario/main/home.dart';
import 'package:diario/models/User.dart';
import 'package:diario/screens/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel> (context);

    if(user==null){
      //mostrar rotas
      return SignUp();
    }

    //show main system
    return Home();
  
  }
}