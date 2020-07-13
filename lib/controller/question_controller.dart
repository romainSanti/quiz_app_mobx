import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'question_controller.g.dart';

class Question_controller = _Question_controller with _$Question_controller;
abstract class _Question_controller with Store{
  @observable
  int indexQuestion =0;

  @observable
  int indexReponse=0;

  @action
  void changeQuestion(){
    indexQuestion++;
  }

  @action
  void reset(){
    indexQuestion =0;
  }

  @action
  void retourQuestionPrecedente(){
    if (indexQuestion >0){
      indexQuestion--;
    }
  }
}