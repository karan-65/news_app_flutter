//https://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=835734479e6f43d98ff891d0971b907a
//fetching data from the api
import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:news_app_flutter/model/article.dart';

class FetchNews {
  static List sourcesId = [
    "abc-news",
    "bbc-news",
    "bbc-sport",
    "business-insider",
    "engadget",
    "entertainment-weekly",
    "espn",
    "espn-cric-info",
    "financial-post",
    "fox-news",
    "fox-sports",
    "globo",
    "google-news",
    "google-news-in",
    "medical-news-today",
    "national-geographic",
    "news24",
    "new-scientist",
    "new-york-magazine",
    "next-big-future",
    "techcrunch",
    "techradar",
    "the-hindu",
    "the-wall-street-journal",
    "the-washington-times",
    "time",
    "usa-today",
  ];

  static Future<newsart> fetchNews() async {
    final _random = new Random();
    var souceid = sourcesId[_random.nextInt(sourcesId.length)];
    print(souceid);

    Response response = await get(Uri.parse(
        "https://newsapi.org/v2/top-headlines?sources=$souceid&apiKey=835734479e6f43d98ff891d0971b907a"));

    Map body_data = jsonDecode(response.body);
    List articles = body_data["articles"];
    print(articles);

    final _newrandom = new Random();
    var myarticle = articles[_random.nextInt(articles.length)];

    return newsart.fromApitoapp(myarticle);
  }
}
