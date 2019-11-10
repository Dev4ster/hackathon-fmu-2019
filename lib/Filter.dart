import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width,
    height: 30,
      child: Row(
      children: <Widget>[
        RaisedButton(
          child: Container(
          width: 130,
          height: 40,
            child: Center(
              child: Text(
                "Anfitriões",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          color: Color(0xff941BE3),
          onPressed: (){},
        ),
        Spacer(),
        RaisedButton(
          child: Container(
          width: 130,
          height: 40,
            child: Center(
              child: Text(
                "Hóspedes",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          color: Color(0xff941BE3),
          onPressed: (){},
        )
      ],
      ),
    );
  }
}