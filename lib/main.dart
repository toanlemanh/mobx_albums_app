
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx_album_app/features/albums/view/albums_view.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Album'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: AlbumsView()
        )
      )
    );
  }
}