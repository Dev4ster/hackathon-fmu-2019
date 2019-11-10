import 'package:flutter/material.dart';

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Containers Campos
      String nome;
      String cpf;
      String email;
      String senha;
      String endereco;
      String numero;
      String cep;
      String cidade;
      String estado;

      TextField NomeField = new TextField(
        decoration: InputDecoration(
          labelText: "Nome",
           prefixIcon: Icon(Icons.account_circle,color: Colors.white,),
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
          nome = valor;
        },
      );

      TextField CPFField = new TextField(
        decoration: InputDecoration(
          labelText: "CPF",
           prefixIcon: Icon(Icons.assignment_ind,color: Colors.white,),
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
          cpf = valor;
        },
      );

      TextField EmailField = new TextField(
        decoration: InputDecoration(
          labelText: "E-mail",
           prefixIcon: Icon(Icons.email,color: Colors.white,),
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
          email = valor;
        },
      );
      
      TextField SenhaField = new TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: "Senha",
           prefixIcon: Icon(Icons.security,color: Colors.white,),
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
    // fim campos
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

    Container container = new Container(
       height: double.infinity,
      padding:  EdgeInsets.all(20.0),
      width: double.infinity,
         decoration: BoxDecoration(
        image: new DecorationImage(image: new AssetImage("assets/images/cadastrobg.jpg"), fit: BoxFit.cover,),
         ),
      child: SingleChildScrollView(
         physics: AlwaysScrollableScrollPhysics(),
          child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Logo,
            NomeField,
            CPFField,
            EmailField,
            SenhaField,
            SenhaField,
            SenhaField],
            
        ),
        
      ),
    );



    AppBar appBar = new AppBar(
      title: new Text("Amiguíneos Cadastro"),
      backgroundColor: Colors.purple[900],
    );


    Scaffold scaffoldcad = new Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: appBar,
      body: container,
    );
    return scaffoldcad;
  }
}