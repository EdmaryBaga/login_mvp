import 'package:flutter/material.dart';
import 'package:login_mvp/model/Cuenta.dart';
import 'package:login_mvp/presenter/registryPresenter.dart';

class MyRegistry extends StatefulWidget {

  final RegistryPresenter presenter;

  const MyRegistry(this.presenter, {Key key}) : super(key: key);

  @override
  _MyRegistryState createState() => _MyRegistryState();
}

class _MyRegistryState extends State<MyRegistry> {

  String correo;
  String passwd;
  Cuenta cuenta;

  String logIn = "Log In";
  String signUP = "Sign Up";

  int titleF=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi registro"),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Ingresa los siguiente datos"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    RaisedButton(
                      child: Text(titleF==0?signUP:logIn),
                      onPressed: (){
                        setState(() {
                          titleF ==0 ?titleF=1 : titleF=0;
                        });
                      },
                    ),
                   Text(titleF==0? logIn:signUP),


                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(titleF==0?signUP:logIn),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Correo",
                      ),
                      onChanged: (value){
                        correo = value;
                      },
                    ),

                    TextFormField(
                      decoration: InputDecoration(
                          labelText: "Contraseña"
                      ),
                      onChanged: (value){
                        passwd = value;
                      },
                    ),
                    RaisedButton(
                      child: Text("Enviar"),
                      onPressed: (){
                       cuenta = new Cuenta(correo, passwd);
                       this.widget.presenter.onRegistryClicked(cuenta, titleF);
                        //llama a un metodo del presentador pasandole el correo y password
                      },
                    )
                  ],
                ),

            ],
          ),
        ),
      ),
    );
  }
}

