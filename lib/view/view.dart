import 'package:flutter/material.dart';
import 'package:news_app_flutter/controller/fetch_news.dart';
import 'package:news_app_flutter/model/article.dart';
import 'package:news_app_flutter/widgets/news_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late newsart newsar;

  getnews() async {
    newsar = await FetchNews.fetchNews();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    getnews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          onPageChanged: (value) {
            getnews();
          },
          itemBuilder: (context, index) {
            // FetchNews.fetchNews();
            return newsContainer(
              imgurl: newsar.imgurl,
              newdescription: newsar.description,
              newscontent: newsar.content,
              newsheading: newsar.heading,
              newsurl: newsar.newsurl,
            );
          }),
    );
  }
}
