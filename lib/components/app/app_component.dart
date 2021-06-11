/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:fluro/fluro.dart';

import '../../components/model/creation.dart';
import '../../components/widgets/creation_card.dart';
import '../../helpers/creation_builder.dart';
import 'package:flutter/material.dart';

import '../../config/application.dart';
import '../../config/routes.dart';

class AppComponent extends StatefulWidget {
  @override
  State createState() {
    
    return AppComponentState();
  }
}

class AppComponentState extends State<AppComponent> {
  AppComponentState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  

  @override
  Widget build(BuildContext context) {
    final List<Creation> creations = buildCreations();
      
    return MaterialApp(
          title: 'Made by Bas de Vaan',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Scaffold(
          appBar: AppBar(
            title: Text("Made By Bas de Vaan"),
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
          ))),
    );
  }
}
