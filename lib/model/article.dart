import 'package:flutter/material.dart';

class newsart {
  String imgurl;
  String heading;
  String description;
  String content;
  String newsurl;

  newsart(
      {required this.content,
      required this.description,
      required this.heading,
      required this.imgurl,
      required this.newsurl});

  static newsart fromApitoapp(Map<String, dynamic> article) {
    return newsart(
        content: article["content"],
        description: article["description"],
        heading: article["title"],
        imgurl: article["urlToImage"],
        newsurl: article["url"]);
  }
}
