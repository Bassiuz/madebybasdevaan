import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 800,
        child: Card(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  height:(MediaQuery.of(context).size.width - 40) * 0.20,
                  width: (MediaQuery.of(context).size.width - 40) * 0.20,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    fit: BoxFit.fitHeight,
                    alignment: FractionalOffset.topCenter,
                    image: new NetworkImage('https://bassiuz.github.io/madebybasdevaan/assets/assets/graphics/bas.jpg'),
                  )),
                ),
              ),
              Container(
                width: (MediaQuery.of(context).size.width - 40) * 0.70,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Text(desc),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  final String title = "Made By Bas de Vaan";
  final String desc = "This is the blog where I talk about things I made! Sometimes in Dutch, sometimes in English. Expect to find all kinds ot things here, from stories about Productivity to programming an writing cookbooks. As we say, i'm home from all markets :)";
}
