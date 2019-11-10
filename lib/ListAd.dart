
import 'package:flutter/material.dart';
import 'AdInfo.dart';

class Ad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.black12,
          boxShadow: [
            BoxShadow(
            color: Colors.black12,
            offset: Offset(1,2),
            blurRadius: 2,
            )
          ]
        ),
        width: MediaQuery.of(context).size.width,
        height: 180,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
          child: Column(
            children: <Widget>[
              Text(
                "Lorem Ipsum has been the industry's standard dummy.Lorem Ipsum has been the",
                style: TextStyle(fontSize: 15,)
              ),
              Spacer(),
              Row(
                children: <Widget>[
                  Icon(Icons.stop, color: Colors.purple,),
                  Text("Gato", style: TextStyle(fontSize: 15),),
                  Spacer(),
                  Icon(Icons.pets, color: Colors.purple,),
                  Text("Cão", style: TextStyle(fontSize: 15),),
                  Spacer(),
                  Icon(Icons.stop, color: Colors.purple,),
                  Text("Pássaro", style: TextStyle(fontSize: 15),),
                  Spacer(),
                  Icon(Icons.room, color: Colors.purple,),
                  Text("5 KM")
                ],
              ),
              Container(
              width: 180,
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: RaisedButton(
                  color: Colors.purple,
                  child: Text("Infomações"),
                  onPressed:() {},
                  ),
                ),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}