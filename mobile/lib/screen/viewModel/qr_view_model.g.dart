// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$QrViewModel on _QrViewModelBase, Store {
  late final _$dataStateAtom =
      Atom(name: '_QrViewModelBase.dataState', context: context);

  @override
  DataState get dataState {
    _$dataStateAtom.reportRead();
    return super.dataState;
  }

  @override
  set dataState(DataState value) {
    _$dataStateAtom.reportWrite(value, super.dataState, () {
      super.dataState = value;
    });
  }

  late final _$resultAtom =
      Atom(name: '_QrViewModelBase.result', context: context);

  @override
  Qr? get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(Qr? value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  late final _$countDownAtom =
      Atom(name: '_QrViewModelBase.countDown', context: context);

  @override
  int get countDown {
    _$countDownAtom.reportRead();
    return super.countDown;
  }

  @override
  set countDown(int value) {
    _$countDownAtom.reportWrite(value, super.countDown, () {
      super.countDown = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_QrViewModelBase.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$_QrViewModelBaseActionController =
      ActionController(name: '_QrViewModelBase', context: context);

  @override
  void setCountDown() {
    final _$actionInfo = _$_QrViewModelBaseActionController.startAction(
        name: '_QrViewModelBase.setCountDown');
    try {
      return super.setCountDown();
    } finally {
      _$_QrViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void repeatProcess() {
    final _$actionInfo = _$_QrViewModelBaseActionController.startAction(
        name: '_QrViewModelBase.repeatProcess');
    try {
      return super.repeatProcess();
    } finally {
      _$_QrViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dataState: ${dataState},
result: ${result},
countDown: ${countDown}
    ''';
  }
}
