import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOStackAndPositionedPage extends StatefulWidget {
  LOStackAndPositionedPage({Key? key}) : super(key: key);

  @override
  _LOStackAndPositionedPageState createState() =>
      _LOStackAndPositionedPageState();
}

class _LOStackAndPositionedPageState extends State<LOStackAndPositionedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StackAndPositioned"),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.red,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment(1, 1),
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                      ),
                      Container(height: 80, width: 80, color: Colors.yellow),
                      Container(height: 300, width: 30, color: Colors.purple),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 110,
                  alignment: Alignment.center,
                  child: Stack(
                    alignment: Alignment(1, 1),
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.black,
                      ),
                      Container(height: 80, width: 80, color: Colors.yellow),
                      Container(height: 300, width: 30, color: Colors.purple),
                    ],
                  ),
                ),
                SizedBox(),
                Container(
                  color: Colors.blue,
                  height: 200,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 30,
                        width: 130,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        left: 110,
                        top: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 10,
                  alignment: Alignment.center,
                  child: IndexedStack(
                    index: 0,
                    alignment: Alignment(1, 1),
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.black,
                      ),
                      Container(height: 30, width: 40, color: Colors.yellow),
                      Container(height: 30, width: 50, color: Colors.purple),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
