import 'package:flutter/material.dart';
import 'package:madebybasdevaan/widgets/creation_card.dart';

import 'creation_builder.dart';
import 'model/creation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Made by Bas de Vaan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Made by Bas de Vaan'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final List<Creation> creations = buildCreations();
      
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: ((MediaQuery.of(context).size.width - MediaQuery.of(context).size.width % 300)/300).truncate(),
                children: creations.map((c) {
                  return CreationCard(creation: c);
                }).toList(),
              ),
            ),
          ],
        )));
  }
}
