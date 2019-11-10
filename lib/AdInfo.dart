import 'package:flutter/material.dart';

class AdInf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Informações do anúncio")),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                "Casa disponível para Dog", 
                style: TextStyle(fontSize: 20),),
              ),
              Spacer(),
              Text(
              "Orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
              style: TextStyle(fontSize: 20),),
              Spacer(),
              RaisedButton(
                color: Colors.purple,
                child: Text("Conversar com anúnciante", 
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                  ),
                ),
              onPressed: (){},
              ),
              
              Spacer(),
              
            ],
          ),
        ),
      ),
    );
  }
}
