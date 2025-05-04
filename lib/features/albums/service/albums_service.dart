import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:mobx_album_app/features/albums/model/album.dart';
import 'package:dio/dio.dart';
import 'package:mobx_album_app/features/albums/service/service_path_extension.dart';
import '../model/service_path.dart';
import 'ialbum_service.dart';
// real implementation of ALbum service
class AlbumsService extends IAlbumService{
  AlbumsService(Dio service) : super(service);

  @override
  Future<List<Album>> fetchDatas() async {
    //call API here using Dio
    final response = await service.get(ServicePath.ALBUMS.rawValue);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data;
      if (responseData is List) {
        debugPrint('response data $responseData');
        return responseData.map((e) => Album.fromJson(e)).toList();
      }
    }
    return [];
  }
}
