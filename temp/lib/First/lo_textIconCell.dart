import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOTextIconCell extends StatelessWidget {
  final String name;

  const LOTextIconCell({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          width: 43,
        ),
        Expanded(
          child: Text(this.name, style: TextStyle(color: Colors.white)),
          flex: 1,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
          child: Icon(
            Icons.chevron_right,
            color: Colors.white,
            // size: 40,
          ),
        )
      ],
    ));
  }
}
