import 'package:flutter/material.dart';
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text(creation.description), Text(creation.content)],
        ),
      ),
    );
  }
}
