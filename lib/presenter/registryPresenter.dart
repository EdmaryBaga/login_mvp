

import 'package:login_mvp/model/Cuenta.dart';
import 'package:login_mvp/model/FireDB.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegistryPresenter{

  void onRegistryClicked(Cuenta cuenta, int titleF){  }
  //set de la vista o estado del login
}

class BasicRegPresenter implements RegistryPresenter{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  FireBD _fire = new FireBD();

  @override
  void onRegistryClicked(Cuenta cuenta, int titleF) {
    //llama a FireBase, mandandole la cuenta a registrar

    print("Entre al registro");
    print("${cuenta.correo}  ${cuenta.contrasena}");
    if(titleF ==0){
      print( _fire.signUp(cuenta.correo, cuenta.contrasena).catchError((error){
        print(error);
      }));
    }
    else if(titleF == 1){
      _fire.signIn(cuenta.correo, cuenta.contrasena).catchError((error){
        print(error);
      });
    }

  }


}