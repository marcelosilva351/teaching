// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MobxController on _MobxControllerBase, Store {
  final _$numeroAtom = Atom(name: '_MobxControllerBase.numero');

  @override
  int get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(int value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  final _$_MobxControllerBaseActionController =
      ActionController(name: '_MobxControllerBase');

  @override
  dynamic incrementar() {
    final _$actionInfo = _$_MobxControllerBaseActionController.startAction(
        name: '_MobxControllerBase.incrementar');
    try {
      return super.incrementar();
    } finally {
      _$_MobxControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numero: ${numero}
    ''';
  }
}
