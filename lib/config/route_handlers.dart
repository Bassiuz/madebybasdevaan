/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 * 
 * Copyright (c) 2019 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */
import 'package:madebybasdevaan/helpers/creation_builder.dart';
import '../components/widgets/creation_detail_screen.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../main.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyApp();
});

var creationHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  List<String> title = params['title'];
  return CreationDetailScreen(
    creation: getCreationForTitle(title[0]),
  );
});
