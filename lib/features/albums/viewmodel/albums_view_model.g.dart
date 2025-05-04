// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albums_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AlbumsViewModel on _AlbumsViewModelBase, Store {
  Computed<dynamic>? _$isLoadingComputed;

  @override
  dynamic get isLoading =>
      (_$isLoadingComputed ??= Computed<dynamic>(() => super.isLoading,
              name: '_AlbumsViewModelBase.isLoading'))
          .value;
  Computed<dynamic>? _$albumListComputed;

  @override
  dynamic get albumList =>
      (_$albumListComputed ??= Computed<dynamic>(() => super.albumList,
              name: '_AlbumsViewModelBase.albumList'))
          .value;
  Computed<dynamic>? _$albumCountComputed;

  @override
  dynamic get albumCount =>
      (_$albumCountComputed ??= Computed<dynamic>(() => super.albumCount,
              name: '_AlbumsViewModelBase.albumCount'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_AlbumsViewModelBase._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_albumListAtom =
      Atom(name: '_AlbumsViewModelBase._albumList', context: context);

  @override
  List<Album> get _albumList {
    _$_albumListAtom.reportRead();
    return super._albumList;
  }

  @override
  set _albumList(List<Album> value) {
    _$_albumListAtom.reportWrite(value, super._albumList, () {
      super._albumList = value;
    });
  }

  late final _$fetchAlbumListAsyncAction =
      AsyncAction('_AlbumsViewModelBase.fetchAlbumList', context: context);

  @override
  Future<void> fetchAlbumList() {
    return _$fetchAlbumListAsyncAction.run(() => super.fetchAlbumList());
  }

  late final _$_AlbumsViewModelBaseActionController =
      ActionController(name: '_AlbumsViewModelBase', context: context);

  @override
  void changeLoading() {
    final _$actionInfo = _$_AlbumsViewModelBaseActionController.startAction(
        name: '_AlbumsViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_AlbumsViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
albumList: ${albumList},
albumCount: ${albumCount}
    ''';
  }
}
