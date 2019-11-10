import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaLogin extends StatelessWidget {

  String login;
  String senha;
  String dialog;
  String teste;


  @override
  Widget build(BuildContext context){
      final theme = Theme.of(context);
    //Primeiro input
      TextField LoginField = new TextField(
        decoration: InputDecoration(
          labelText: "Login",
           labelStyle: new TextStyle(color: Colors.white,
                                      fontSize: 18,
                                  ),
           enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, 
                                  width: 1.0 ),
           ),  
        ),
         style: TextStyle(
        color: Colors.white
      ),
        onChanged: (valor){
          login = valor;
        },
      );
    //Segundo input
    TextField SenhaField = new TextField(
      
      decoration: InputDecoration(
        labelText: "Senha",
        
        labelStyle: new TextStyle(color: Colors.white,
                                      fontSize: 18,
                                  ),
           enabledBorder: new UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white, 
                                  width: 1.0 ),
           ),
      ),
      
      style: TextStyle(
        color: Colors.white
      ),
      onChanged: (valor){
        senha = valor;
      },
    );
    //Botão

  Container Logo =  new Container(
      child: Text(
        "AMIGUÍNEOS",
        
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Rustico-Regular',
            fontWeight:FontWeight.w800 ,
            fontSize: 50.0,
            shadows: <Shadow>[
                            Shadow(
                              offset: Offset(10.0, 10.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                            Shadow(
                              offset: Offset(10.0, 10.0),
                              blurRadius: 8.0,
                              color: Colors.black,
                            ),
                          ],
         ),
      ),
  );
  Padding PaddingBt = new Padding(
    padding: EdgeInsets.all(20),
  );

   Container LoginButton =  new Container(
  width: double.infinity,
  height: 50,

  // height: double.infinity,
  child: new RaisedButton(
      child:new Text("Login",
      
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),),//dentro do botao tem que ter outro widget de texto
      color:Colors.purple[900],
      onPressed: (){

        if(login==null||senha==null){
          dialog = "Preencha os campos";
      
        }else{
           dialog = "Processando...";
        }
        AlertDialog LogarDialog = new AlertDialog(
          content: new Text(dialog),
        );
        showDialog(context: context, child: LogarDialog);
      },
    ),
);
    

    Container container = new Container(
      padding:  EdgeInsets.all(20.0),
         decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/images/loginbg.jpg"), fit: BoxFit.cover,),
         ),
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Logo,LoginField,SenhaField,PaddingBt,LoginButton],
      ),
    );

    AppBar appBar = new AppBar(
      title: new Text("Amiguíneos Login"),
      backgroundColor: Colors.purple[900],
    );

    Scaffold scaffold = new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: appBar,
      body: container,
    );

    return scaffold;
  }
  
}