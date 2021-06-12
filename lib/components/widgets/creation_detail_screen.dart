import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../model/creation.dart';

class CreationDetailScreen extends StatelessWidget {
  CreationDetailScreen({@required this.creation}) : super();
  final Creation creation;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(creation.title),
      ),
      body: Center(
        child: Column(
          children: [
            new AspectRatio(
          aspectRatio: 4 / 1,
          child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: FractionalOffset.topCenter,
                image: new NetworkImage(creation.imageUrl),
              )
            ),
          ),
        ), 
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MarkdownBody(data: creation.content),
                        )
                        ],
        ),
      ),
    );
  }
}
