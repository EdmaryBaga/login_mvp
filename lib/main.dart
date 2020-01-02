import 'package:flutter/material.dart';
import 'package:login_mvp/presenter/registryPresenter.dart';
import 'package:login_mvp/view/myRegistry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyRegistry(new BasicRegPresenter()),
    );
  }
}

