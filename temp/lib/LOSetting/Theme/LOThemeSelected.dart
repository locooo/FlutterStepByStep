import 'package:flutter/material.dart';

class LOThemeSelected extends StatefulWidget {
  final bool isSelecteded;
  final Color color;

  LOThemeSelected({Key key, @required this.isSelecteded, @required this.color})
      : super(key: key);

  @override
  _LOThemeSelectedState createState() => _LOThemeSelectedState();
}

class _LOThemeSelectedState extends State<LOThemeSelected> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        color: widget.color,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
              child: Text(""),
            ),
          ),
          widget.isSelecteded
              ? Container(
                  // decoration: new BoxDecoration(
                  //   color: Colors.pink,
                  // ),
                  width: 70,
                  height: 40,
                  child: Opacity(
                    opacity: 1,
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
