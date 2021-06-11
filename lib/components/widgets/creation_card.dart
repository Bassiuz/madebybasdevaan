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
          children: [new Image(
                        fit: BoxFit.fitWidth,
                        alignment: FractionalOffset.topCenter,
                        image: new NetworkImage(creation.imageUrl),
                      ),Text(creation.title), Text(creation.description)],
        ))
      ])),
    );
  }
}
