import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quizzappmobx/modele/questions.dart';

class Question extends StatelessWidget {
  int indexQuestion;
  List<Questions> listeQuestion;

  Question({this.listeQuestion, this.indexQuestion});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      child: Card(
        elevation: 10,
        color: Colors.orange[100],
        shadowColor:Colors.orange[100] ,
        child: Text(
            listeQuestion[indexQuestion].intitule,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
    );
  }
}
