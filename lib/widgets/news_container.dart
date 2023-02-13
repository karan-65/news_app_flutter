import 'package:flutter/material.dart';

class newsContainer extends StatelessWidget {
  String imgurl;
  String newsheading;
  String newdescription;
  String newsurl;
  String newscontent;

  newsContainer(
      {required this.imgurl,
      required this.newdescription,
      required this.newsheading,
      required this.newscontent,
      required this.newsurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(children: [
        Image.network(
          imgurl,
          height: 400,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Text(newsheading),
        Text(newscontent),
        Text(newdescription),
        Spacer(),
        ElevatedButton(onPressed: () {}, child: Text("Read More")),
      ]),
    );
  }
}
