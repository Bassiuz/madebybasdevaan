import 'dart:core';

import 'package:flutter/material.dart';

class Creation {
  final String title;
  final String description;
  final String content;
  final String imageUrl;
  final String key;

  Creation({
      @required this.key,
      @required this.title,
      @required this.description,
      @required this.content,
      @required this.imageUrl});
}
