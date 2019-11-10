import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
class BackDropL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      title: Text("Olá"),
      iconPosition: BackdropIconPosition.leading,
      headerHeight: 120,
      frontLayer: Text("Front "),
      backLayer: Text("back"),
    );
  }
}