import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Container myAssets(String image, String heading, String tval, String rval) {
    return Container(
        width: 170.0,
        child: GestureDetector(
          onTap:() {print("TAPPED");},
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                  foregroundColor: Colors.amberAccent[50],
                  radius: 57,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    rating(5),
                  ],
                ),
                Text(
                  heading,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    reward("Task Reward", tval),
                    reward("Referral", rval)
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget reward(String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[Text(label), Text(value)],
    );
  }

  Icon ratingStar() {
    return Icon(
      Icons.star,
      color: Colors.black,
    );
  }

  Row rating(int ratingVal) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ratingStar(),
        ratingStar(),
        ratingStar(),
        ratingStar(),
        ratingStar(),
      ],
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final title = 'Free Air Drops';

    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
    //      backgroundColor: Colors.black,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    myAssets("Resources/Trending/argegntas.jpg", "Argentas",
                        "30BAT", "5USD"),
                    myAssets("Resources/Trending/bat_by_brave.jpg",
                        "Basic Attention Token", "12499", "8333"),
                    myAssets("Resources/Trending/futurepia.jpg", "Futurepia",
                        "1000", "1000"),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
