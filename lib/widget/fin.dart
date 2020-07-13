import 'package:flutter/material.dart';

class Fin extends StatelessWidget {
  Function reset;

  Fin({this.reset});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Fin"
            ),
            RaisedButton(
              child: Text("Recommencer"),
              onPressed: reset,
            )
          ],
        ),
      ),
    );
  }
}
