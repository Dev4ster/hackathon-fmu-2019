import 'package:flutter/material.dart';

class PageInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,top: 20.0,bottom: 0.0, right: 20),
      child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 0.0,top: 10.0,bottom: 0.0, right: 0),
                child: Column(
                  children: <Widget>[
                    Text("Amiguíneos", 
                      style: TextStyle(
                        
                        color: Color(0xff941BE3),
                        fontSize: 25
                      ),
                      textAlign: TextAlign.right,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      ),
                      padding: EdgeInsets.only(left: 0.0,top: 40.0,bottom: 0.0, right: 0.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                          width: MediaQuery.of(context).size.width-10,
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, ",
                              style: TextStyle(
                              color: Color(0xff4d5f75),
                              fontSize: 20
                              ),
                            )
                          ),
                          
                          Padding(padding: new EdgeInsets.fromLTRB(20.0,90,20,20)),
                          RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50,top: 10, bottom: 10, right: 50),
                            child: Container(
                            width:MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                          color: Color(0xff941BE3),
                          onPressed: (){},
                        ),
                        Padding(padding: new EdgeInsets.fromLTRB(20.0,30,20,20)),
                          RaisedButton(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50,top: 10, bottom: 10, right: 50),
                            child: Container(
                            width:MediaQuery.of(context).size.width,
                              child: Center(
                                child: Text(
                                  "Cadastro",
                                  style: TextStyle(color: Colors.white, fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                          color: Color(0xff941BE3),
                          onPressed: (){},
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      ),
    );
    }
  }