// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ApiControllerMobx on _ApiControllerMobxBase, Store {
  final _$postsAtom = Atom(name: '_ApiControllerMobxBase.posts');

  @override
  ObservableFuture<List<PostModel>>? get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(ObservableFuture<List<PostModel>>? value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$_ApiControllerMobxBaseActionController =
      ActionController(name: '_ApiControllerMobxBase');

  @override
  dynamic getPosts() {
    final _$actionInfo = _$_ApiControllerMobxBaseActionController.startAction(
        name: '_ApiControllerMobxBase.getPosts');
    try {
      return super.getPosts();
    } finally {
      _$_ApiControllerMobxBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts}
    ''';
  }
}
