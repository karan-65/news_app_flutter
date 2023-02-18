import 'package:flutter/material.dart';
import 'package:news_app_flutter/view/detail_view.dart';

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
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Image.network(
            imgurl,
            height: 300,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            newsheading,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                backgroundColor: Color.fromARGB(255, 209, 255, 156)),
          ),
          SizedBox(
            height: 30,
          ),
          Text(newscontent.toString().substring(0, newscontent.length - 15)),
          SizedBox(
            height: 30,
          ),
          Text(newdescription),
          Spacer(),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailViewScreen(newsurl: newsurl)));
              },
              child: Text("Read More")),
        ]),
      ),
    );
  }
}
