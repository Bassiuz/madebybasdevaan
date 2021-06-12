import 'package:flutter/material.dart';
import '../../config/application.dart';
import '../model/creation.dart';

class CreationCard extends StatelessWidget {
  final Creation creation;

  CreationCard({@required this.creation});

  void selectCreation(context) {
      Application.router.navigateTo(context, "/creation?title=" + creation.key);
    //Navigator.of(context).push(MaterialPageRoute(builder: (_) {
    //  return CreationDetailScreen(creation: creation);
    //}));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCreation(context),
      splashColor: Theme.of(context).primaryColor,
      child: Card(
          child: Stack(children: [
        Positioned(
            child: Column(
          children: [
            new AspectRatio(
          aspectRatio: 2 / 1,
          child: new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                fit: BoxFit.fitHeight,
                alignment: FractionalOffset.topCenter,
                image: new NetworkImage(creation.imageUrl),
              )
            ),
          ),
        ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(creation.title,
              style: Theme.of(context).textTheme.headline6,),
            ), 
            Padding(
              padding: const EdgeInsets.fromLTRB(8,0,8,8),
              child: Text(creation.description),
            )],
        ))
      ])),
    );
  }
}
