import 'package:amiguineos/HomePage.dart';
import 'package:amiguineos/TelaLogin.dart';
import 'package:amiguineos/TelaCadastro.dart';
import 'package:flutter/material.dart';
import 'package:amiguineos/PageInitial.dart';
import 'AdInfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto-Regular',
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context){

    return 
    Scaffold(
      backgroundColor: Colors.black12,
      body: SingleChildScrollView(child: PageInitial()) 
    );
  }
}
class TelaAd_Route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage()
    );
  }
}
class TelaLogin_route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TelaLogin(),
     
    );
  }
}
class TelaCadastro_route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TelaCadastro()
    );
  }
}

class AdInfo_route extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdInf(),
    );
  }
}