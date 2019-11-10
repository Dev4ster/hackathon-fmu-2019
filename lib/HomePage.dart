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
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}, ),
        actions: <Widget>[
            // action button
            Icon(Icons.monetization_on),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 30),
              child: Center(child: Text("18,00")),
            ),
            
          ],
        centerTitle: true,
        
        
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
