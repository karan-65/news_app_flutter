import 'package:flutter/material.dart';
import 'package:news_app_flutter/widgets/news_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: ((context, index) {
          return newsContainer(
            imgurl: "",
            newdescription: "",
            newsheading: "",
            newsurl: "",
          );
        }),
      ),
    );
  }
}
