import 'package:flutter/material.dart';
import 'package:madebybasdevaan/model/creation.dart';

class CreationDetailScreen extends StatelessWidget {
  CreationDetailScreen({Key? key, required this.creation}) : super(key: key);
  final Creation creation;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(creation.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(creation.description), Text(creation.content)],
        ),
      ),
    );
  }
}
