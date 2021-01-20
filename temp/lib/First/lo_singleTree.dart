import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:temp/First/lo_textIconCell.dart';

import 'lo_firstPageModel.dart';

// typedef OnTapCallback = void Function(int index);

class LOSingleTree extends StatefulWidget {
  final List listData;
  final void Function(int index) onTap;
  LOSingleTree({Key key, @required this.listData, this.onTap})
      : super(key: key);
  @override
  _LOSingleTreeState createState() => _LOSingleTreeState();
}

class _LOSingleTreeState extends State<LOSingleTree> {
  double allHeight = 0;
  bool isMoreState = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, //解决无限高度问题
        physics: new NeverScrollableScrollPhysics(),
        itemCount: isMoreState ? widget.listData.length : 1,
        itemBuilder: (context, index) {
          LOFirstPageModel singleModel = widget.listData[index];
          if (index == 0) {
            return Container(
              decoration: BoxDecoration(color: Color(0xff333333)),
              height: 50,
              child: GestureDetector(
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      singleModel.icon,
                      // size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        singleModel.name,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      flex: 1,
                    ),
                    Icon(
                      isMoreState ? Icons.expand_less : Icons.expand_more,
                      size: 30,
                      color: isMoreState ? Colors.blue : Colors.white,
                    ),
                  ],
                ),
                onTap: () async {
                  setState(() {
                    isMoreState = !isMoreState;
                    if (this.allHeight == 0.0) {
                      this.allHeight = 50.0;
                    } else {
                      this.allHeight = 0.0;
                    }
                  });
                },
              ),
            );
          } else {
            return GestureDetector(
              child: AnimatedContainer(
                curve: Curves.easeOut,
                duration: Duration(milliseconds: 50),
                height: this.allHeight,
                child: Container(
                  decoration: new BoxDecoration(color: Color(0xff333333)),
                  child: LOTextIconCell(
                    name: singleModel.name,
                  ),
                ),
              ),
              onTap: () {
                widget.onTap(index - 1);
              },
            );
          }
        });
  }
}
