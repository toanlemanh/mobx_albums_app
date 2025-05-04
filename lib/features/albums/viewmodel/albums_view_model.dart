import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_album_app/features/albums/model/album.dart';
import 'package:mobx_album_app/features/albums/service/ialbum_service.dart';

part 'albums_view_model.g.dart';

class AlbumsViewModel = _AlbumsViewModelBase with _$AlbumsViewModel;
abstract class _AlbumsViewModelBase with Store {

  @observable
  bool _isLoading = true;

  //working with model
  @observable
  List<Album> _albumList = [];

  @computed
  get isLoading => _isLoading;

  @computed
  get albumList => _albumList;

  @computed
  get albumCount => _albumList.length;

  //working with service, receiving from view
  late final IAlbumService albumService;

  _AlbumsViewModelBase({required this.albumService}){
    fetchAlbumList();
  }

  @action
  Future<void> fetchAlbumList() async {
    //print
    debugPrint('fetching album list');
    _albumList = await albumService.fetchDatas();
    debugPrint('fetched $_albumList');
    changeLoading();
  }

  @action
  void changeLoading(){
    _isLoading = !_isLoading;
  }
}