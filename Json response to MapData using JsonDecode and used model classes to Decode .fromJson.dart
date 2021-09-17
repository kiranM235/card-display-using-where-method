import 'dart:convert';

void main() {
  var response = """{
    
    "albumId": 1,
    "id": 2,
    "title": "reprehenderit est deserunt velit ipsam",
    "url": "https://via.placeholder.com/600/771796",
    "thumbnailUrl": "https://via.placeholder.com/150/771796"
  
    }""";

  Map<String, dynamic> mapData = jsonDecode(response);

//   var imageModel = ImageModel(mapData["title"], mapData["url"], mapData["id"]);

  var imageModel = ImageModel.fromJson(mapData);

  var imageModel2 = ImageModel("aaaa", "https://google.com", 3);

  print(imageModel2.id);
}

class ImageModel {
  late String title;
  late String url;
  late int id;

  ImageModel(this.title, this.url, this.id);

  ImageModel.fromJson(Map<String, dynamic> mapData) {
    title = mapData["title"];
    id = mapData["id"];
    url = mapData["url"];
  }
}
