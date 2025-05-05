import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_album_app/features/albums/model/album.dart';
import 'package:mobx_album_app/features/albums/model/service_path.dart';
import 'package:mobx_album_app/features/albums/service/albums_service.dart';
import 'package:mobx_album_app/features/albums/service/service_path_extension.dart';
import 'package:mobx_album_app/features/albums/viewmodel/albums_view_model.dart';
import 'package:mobx_album_app/widgets/album_card.dart';

class AlbumsView extends StatelessWidget {
  AlbumsView({super.key});

  //1. Create State widget (view)
  //2. Create Store (viewmodel)
  //3. Init Store in view
  final _albumsViewModel = AlbumsViewModel(
    albumService: AlbumsService(
      Dio(BaseOptions(baseUrl: ServicePath.BASEURL.rawValue)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) =>
    _albumsViewModel.isLoading ? CircularProgressIndicator(backgroundColor: Colors.red,)
        : ListView.builder(
          itemCount: _albumsViewModel.albumCount,
          itemBuilder: (context, index){
            return AlbumCard(model: _albumsViewModel.albumList[index]);
          },
        )
    );
  }
}
