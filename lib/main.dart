import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'helpers/creation_json_reader.dart';

import 'components/app/app_component.dart';
import 'components/model/creation.dart';
import 'components/widgets/creation_card.dart';
import 'config/application.dart';
import 'config/routes.dart';

void main() {
  runApp(AppComponent());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Made by Bas de Vaan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Made by Bas de Vaan'),
      onGenerateRoute: Application.router.generator,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({@required this.title}) : super();
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Creation> creations = new CreationJsonReader().init().creations;

  _MyHomePageState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
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
                crossAxisCount: ((MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width % 300) /
                        300)
                    .truncate(),
                children: creations.map((c) {
                  return CreationCard(creation: c);
                }).toList(),
              ),
            ),
          ],
        )));
  }
}
