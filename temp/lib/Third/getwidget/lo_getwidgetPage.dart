import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class LOgetwidgetPage extends StatefulWidget {
  LOgetwidgetPage({Key? key}) : super(key: key);

  @override
  _LOgetwidgetPageState createState() => _LOgetwidgetPageState();
}

class _LOgetwidgetPageState extends State<LOgetwidgetPage> {
  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getwidget-UI框架"),
      ),
      body: Container(
        child: Column(
          children: [
            GFButton(
              onPressed: () {
                print("GFButton");
              },
              splashColor: Color.fromARGB(1, 0, 0, 0),
              focusColor: Colors.black,
              shape: GFButtonShape.pills,
              text: "GFButton",
            ),
            GFButton(
              onPressed: () {
                print("GFButton");
              },
              splashColor: Color.fromARGB(1, 0, 0, 0),
              focusColor: Colors.black,
              shape: GFButtonShape.pills,
              // text: "GFButton",
              icon: Icon(Icons.share),
              child: GFBadge(
                child: Text("12"),
              ),
            ),
            GFCarousel(
              autoPlay: true,
              pagination: true,
              activeIndicator: Colors.pink,
              viewportFraction: 1.0,
              autoPlayAnimationDuration: Duration(milliseconds: 80),
              items: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(2.0),
                    child: TextButton(
                      onPressed: () {
                        print("TextButton");
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: 400,
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  print(index);
                });
              },
            ),
            GFItemsCarousel(
              rowCount: 3,
              children: imageList.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child:
                          Image.network(url, fit: BoxFit.cover, width: 1000.0),
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
