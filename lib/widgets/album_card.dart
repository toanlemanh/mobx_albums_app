import 'package:flutter/material.dart';

import '../features/albums/model/album.dart';


class AlbumCard extends StatelessWidget {
  final Album model;

  const AlbumCard({Key? key, required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(model.title ?? ''),
      ),
    );
  }
}