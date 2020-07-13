// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Question_controller on _Question_controller, Store {
  final _$indexQuestionAtom = Atom(name: '_Question_controller.indexQuestion');

  @override
  int get indexQuestion {
    _$indexQuestionAtom.reportRead();
    return super.indexQuestion;
  }

  @override
  set indexQuestion(int value) {
    _$indexQuestionAtom.reportWrite(value, super.indexQuestion, () {
      super.indexQuestion = value;
    });
  }

  final _$indexReponseAtom = Atom(name: '_Question_controller.indexReponse');

  @override
  int get indexReponse {
    _$indexReponseAtom.reportRead();
    return super.indexReponse;
  }

  @override
  set indexReponse(int value) {
    _$indexReponseAtom.reportWrite(value, super.indexReponse, () {
      super.indexReponse = value;
    });
  }

  final _$_Question_controllerActionController =
      ActionController(name: '_Question_controller');

  @override
  void changeQuestion() {
    final _$actionInfo = _$_Question_controllerActionController.startAction(
        name: '_Question_controller.changeQuestion');
    try {
      return super.changeQuestion();
    } finally {
      _$_Question_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo = _$_Question_controllerActionController.startAction(
        name: '_Question_controller.reset');
    try {
      return super.reset();
    } finally {
      _$_Question_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void retourQuestionPrecedente() {
    final _$actionInfo = _$_Question_controllerActionController.startAction(
        name: '_Question_controller.retourQuestionPrecedente');
    try {
      return super.retourQuestionPrecedente();
    } finally {
      _$_Question_controllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexQuestion: ${indexQuestion},
indexReponse: ${indexReponse}
    ''';
  }
}
