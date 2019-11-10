import 'package:amiguineos/ListAd.dart';
import 'package:flutter/material.dart';
import 'Filter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amiguíneos Anúncio"),
        actions: <Widget>[
          Icon(Icons.monetization_on),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 30),
            child: Center(child: Text("18,00")),
          ),
        ],
        centerTitle: true,
      ),
      drawer: Drawer(child: ListView(
          children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Fernando Borges"),
            accountEmail: Text("Fernandolook1@outlook.com"),
            ),
            ListTile(title: Row(
              children: <Widget>[
              
                Padding(padding: EdgeInsets.only(left: 20), child: Text("Perfil", style: TextStyle(fontSize: 20),)),
              ],
            ), onTap: (){}),
            ListTile(title: Padding(padding: EdgeInsets.only(left: 20), child: Text("Meus Anúncios", style: TextStyle(fontSize: 20),)), onTap: (){}),
            ListTile(title: Padding(padding: EdgeInsets.only(left: 20), child: Text("Perfil", style: TextStyle(fontSize: 20),)), onTap: (){})
          ],
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20.0, top: 10, bottom: 10),
        child: Column(
          children: <Widget>[
            Filter(),
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 13,
              itemBuilder: (BuildContext context, int index) {
                return Ad();
              },
            )),
          ],
        ),
      ),
    );
  }
}
