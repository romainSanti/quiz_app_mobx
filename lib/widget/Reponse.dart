import 'package:flutter/material.dart';
import 'package:quizzappmobx/modele/reponses.dart';

class Reponse extends StatelessWidget {
  List<Reponses> listeReponse;
  Function changeQuestion;
  Function retourQuestionPrecedente;

  Reponse({this.listeReponse, this.changeQuestion,this.retourQuestionPrecedente});


  var index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 40,
              child: RaisedButton(
                elevation: 10,
                color: Colors.red[500],
                onPressed: changeQuestion,
                child: Text(
                  listeReponse[index].enonce,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 40,
              child: RaisedButton(
                elevation: 10,
                color: Colors.red[500],
                onPressed: changeQuestion,
                child: Text(
                  listeReponse[index + 1].enonce,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 40,
              child: RaisedButton(
                elevation: 10,
                color: Colors.red[500],
                onPressed: changeQuestion,
                child: Text(
                  listeReponse[index + 2].enonce,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 40,
              child: RaisedButton(
                elevation: 10,
                color: Colors.red[500],
                onPressed: changeQuestion,
                child: Text(
                  listeReponse[index + 3].enonce,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 40,
              child: RaisedButton(
                elevation: 10,
                color: Colors.black,
                onPressed:  retourQuestionPrecedente,
                child: Text(
                  "Retour à la question",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
