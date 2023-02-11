import 'package:flutter/material.dart';

class newsContainer extends StatelessWidget {
  String imgurl;
  String newsheading;
  String newdescription;
  String newsurl;

  newsContainer(
      {required this.imgurl,
      required this.newdescription,
      required this.newsheading,
      required this.newsurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.network(imgurl),
        Text(newsheading),
        Text(newdescription),
        ElevatedButton(onPressed: () {}, child: Text("Read More")),
      ]),
    );
  }
}
