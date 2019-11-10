import 'package:flutter/material.dart';
import 'main.dart';
class PageInitial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
               height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: new DecorationImage(image: new AssetImage("assets/images/inicial.gif"), fit: BoxFit.cover),
              ),
              child: Container(
                padding: EdgeInsets.all(20) ,
                child: Column(
                  children: <Widget>[
                    Text("Amiguíneos", 
                      style: TextStyle(
                         fontFamily: 'Rustico-Regular',
                          fontWeight:FontWeight.w800 ,
                          color: Colors.white,
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
                          padding: EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                " Amiguíneos para Amiguíneos ",
                                style: TextStyle(
                                color: Colors.white,
                                //backgroundColor: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                shadows: [
                                        Shadow( // bottomLeft
                                          offset: Offset(-1.5, -1.5),
                                          color: Colors.black
                                        ),
                                        Shadow( // bottomRight
                                          offset: Offset(1.5, -1.5),
                                          color: Colors.black
                                        ),
                                        Shadow( // topRight
                                          offset: Offset(1.5, 1.5),
                                          color: Colors.black
                                        ),
                                        Shadow( // topLeft
                                          offset: Offset(-1.5, 1.5),
                                          color: Colors.black
                                        ),
                                      ]
                                ),
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
                          onPressed: (){
                             Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TelaLogin_route()),
                              );
                          },
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
                          onPressed: (){
                             Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => TelaCadastro_route()),
                              );
                          },
                        ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            
          ],
        ),
    );
    }

  }


  