import 'package:flutter/material.dart';

import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Containers Campos
    TextEditingController enderecoController = new TextEditingController();
    TextEditingController bairroController = new TextEditingController();
    TextEditingController cidadeController = new TextEditingController();

    String nome;
    String cpf;
    String email;
    String senha;
    String endereco;
    String numero;
    String bairro;
    String cep;
    String cidade;
    String estado;

    TextField NomeField = new TextField(
      decoration: InputDecoration(
        labelText: "Nome",
        prefixIcon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        nome = valor;
      },
    );

    TextField CPFField = new TextField(
      decoration: InputDecoration(
        labelText: "CPF",
        prefixIcon: Icon(
          Icons.assignment_ind,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        cpf = valor;
      },
    );

    TextField EmailField = new TextField(
      decoration: InputDecoration(
        labelText: "E-mail",
        prefixIcon: Icon(
          Icons.email,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        email = valor;
      },
    );

    TextField SenhaField = new TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Senha",
        prefixIcon: Icon(
          Icons.security,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        senha = valor;
      },
    );

    TextField EnderecoField = new TextField(
      controller: enderecoController,
      decoration: InputDecoration(
        labelText: "Endereço",
        prefixIcon: Icon(
          Icons.room,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        senha = valor;
      },
    );

    //numero linha
    TextField NumeroField = new TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        labelText: "Número",
        prefixIcon: Icon(
          Icons.map,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        numero = valor;
      },
    );
    //fim numero inha
    TextField BairroField = new TextField(
      controller: bairroController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        labelText: "Bairro",
        prefixIcon: Icon(
          Icons.rounded_corner,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        bairro = valor;
      },
    );

    TextField CepField = new TextField(
      decoration: InputDecoration(
        labelText: "CEP",
        prefixIcon: Icon(
          Icons.pin_drop,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) async {
        cep = valor;
        String api =
            "http://apps.widenet.com.br/busca-cep/api/cep.json?code=" + cep;
        var response = await http.get(api);
        var dados = convert.json.decode(response.body);
        enderecoController.text = dados["address"];
        bairroController.text = dados["district"];
        cidadeController.text = dados["city"];
      },
    );

    TextField CidadeField = new TextField(
      controller: cidadeController,
      decoration: InputDecoration(
        labelText: "Cidade",
        prefixIcon: Icon(
          Icons.pin_drop,
          color: Colors.white,
        ),
        labelStyle: new TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        enabledBorder: new UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1.0),
        ),
      ),
      style: TextStyle(color: Colors.white),
      onChanged: (valor) {
        cidade = valor;
      },
    );

    Row linhaNumeroBairro = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(child: NumeroField),
        SizedBox(
          width: 20.0,
        ),
        new Flexible(child: BairroField),
      ],
    );

    Row linhaCepECidade = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(child: CepField),
        SizedBox(
          width: 20.0,
        ),
        new Flexible(child: CidadeField),
      ],
    );

    Container CadastrarButtom = new Container(
      margin: const EdgeInsets.only(top: 20.0),
      width: double.infinity,
      height: 50,

      // height: double.infinity,
      child: new RaisedButton(
        child: new Text(
          "Cadastrar",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ), //dentro do botao tem que ter outro widget de texto
        color: Colors.purple[900],
        onPressed: () {},
      ),
    );

    // fim campos
    Container Logo = new Container(
      child: Text(
        "AMIGUÍNEOS",
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Rustico-Regular',
          fontWeight: FontWeight.w800,
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
      padding: EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("assets/images/cadastrobg.jpg"),
          fit: BoxFit.cover,
        ),
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
            EnderecoField,
            linhaNumeroBairro,
            linhaCepECidade,
            CadastrarButtom
          ],
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
