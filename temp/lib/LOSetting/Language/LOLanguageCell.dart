import 'package:flutter/material.dart';

class LOLanguageCell extends StatefulWidget {
  final String name;
  final bool isSelected;
  LOLanguageCell({Key key, @required this.name, @required this.isSelected})
      : super(key: key);

  @override
  _LOLanguageCellState createState() => _LOLanguageCellState();
}

class _LOLanguageCellState extends State<LOLanguageCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      // height: 51.5,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(widget.name),
                ),
              ),
              widget.isSelected
                  ? Container(
                      width: 70,
                      height: 40,
                      // decoration: new BoxDecoration(color: Colors.red),
                      child: Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                    )
                  : Container(
                      width: 70,
                      height: 40,
                    ),
            ],
          ),
          Container(
            decoration: new BoxDecoration(color: Colors.grey),
            height: 0.5,
          ),
        ],
      ),
    );
  }
}
