import '../model/album.dart';
import 'package:dio/dio.dart';
//create a service interface [Album]
abstract class IAlbumService{
  final Dio service;
  IAlbumService(this.service);

  Future<List<Album>> fetchDatas();
}