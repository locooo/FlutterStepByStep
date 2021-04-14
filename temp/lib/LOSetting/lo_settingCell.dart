import 'package:flutter/material.dart';

class LOSettingCell extends StatelessWidget {
  final String name;
  const LOSettingCell({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: new BoxDecoration(color: Colors.purple),
      height: 51,
      child: Column(
        children: [
          Row(
            //navigate_next
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                height: 50,
                // decoration: new BoxDecoration(color: Colors.red),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                  size: 40,
                ),
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
