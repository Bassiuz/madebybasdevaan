import '../components/model/creation.dart';
import 'dart:convert';
import 'creations.dart';

class CreationJsonReader {
  List<Creation> creations = [];

  CreationJsonReader();

  CreationJsonReader init() {
    var data = json.decode(CREATIONS_JSON);
    data.forEach((k, v) {
      Creation creation = new Creation(
          key: k,
          content: v['content'],
          title: v['title'],
          description: v['description'],
          imageUrl: v['image_url']);
      creations.add(creation);
    });

    return this;
  }

  Creation getCreationForTitle(String title) {
    return creations.where((creation) => creation.key == title).first;
  }
}
