import 'dart:io';

import '../model/service_path.dart';

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.ALBUMS:
        return '/albums';
      case ServicePath.BASEURL:
        return 'https://jsonplaceholder.typicode.com/albums?_limit=20';
      default:
        throw ServicePathException(this as String);
    }
  }
}
class ServicePathException extends HttpException {
  ServicePathException(super.message);
}