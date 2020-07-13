import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:quizzappmobx/widget/Reponse.dart';
import 'package:quizzappmobx/widget/fin.dart';
import 'package:quizzappmobx/widget/question.dart';
import 'package:quizzappmobx/controller/question_controller.dart';

import 'modele/questions.dart';
import 'modele/reponses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static List<Reponses> listeRep = [
    Reponses(enonce: "Fraise", point: 10),
    Reponses(enonce: "Nectarine", point: 15),
    Reponses(enonce: "Banane", point: 20),
    Reponses(enonce: "Framboise", point: 25),
  ];

  static List<Reponses> listeRep2 = [
    Reponses(enonce: "ACDC", point: 10),
    Reponses(enonce: "Muse", point: 15),
    Reponses(enonce: "Nirvana", point: 20),
    Reponses(enonce: "U2", point: 25),
  ];

  static List<Reponses> listeRep3 = [
    Reponses(enonce: "Souris", point: 10),
    Reponses(enonce: "Dauphin", point: 15),
    Reponses(enonce: "Chat", point: 20),
    Reponses(enonce: "Chien", point: 25),
  ];

  List<Questions> listeQuestion = [
    Questions(
        intitule: "Quel est votre fruit préféré ?", listeReponse: listeRep),
    Questions(
        intitule: "Quel est votre groupe de musique préféré ?",
        listeReponse: listeRep2),
    Questions(intitule: "Quel est votre animal ?", listeReponse: listeRep3),
  ];

  final Question_controller controller = Question_controller();

  void changeQuestion() {
    print(listeQuestion.length);
    if (controller.indexQuestion < listeQuestion.length) {
      controller.changeQuestion();
      print(controller.indexQuestion);
    }
  }

  void reset() {
    controller.reset();
  }

  void retourQuestionPrecedente() {
    controller.retourQuestionPrecedente();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Observer(
        builder: (_) => Scaffold(
          body: controller.indexQuestion < listeQuestion.length
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Question(
                          listeQuestion: listeQuestion,
                          indexQuestion: controller.indexQuestion),
                      Reponse(
                        listeReponse: listeQuestion[controller.indexQuestion]
                            .listeReponse,
                        changeQuestion: changeQuestion,
                        retourQuestionPrecedente: retourQuestionPrecedente,
                      ),
                    ],
                  ),
                )
              : Fin(reset: reset),
        ),
      ),
    );
  }
}
