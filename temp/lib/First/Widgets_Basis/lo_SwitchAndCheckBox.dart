import 'package:flutter/material.dart';

class LOSwitchAndCheckBoxPage extends StatefulWidget {
  LOSwitchAndCheckBoxPage({Key key}) : super(key: key);

  @override
  _LOSwitchAndCheckBoxPageState createState() =>
      _LOSwitchAndCheckBoxPageState();
}

class _LOSwitchAndCheckBoxPageState extends State<LOSwitchAndCheckBoxPage> {
  bool _switchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchAndCheckBox"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              // decoration: BoxDecoration(color: Colors.red),
              width: 100,
              child: Switch(
                value: _switchOn,
                onChanged: (bool value) {
                  setState(() {
                    _switchOn = !_switchOn;
                  });

                  print(value);
                },
                activeColor: Colors.red,
              ),
            ),
            Checkbox(
              value: _switchOn,
              activeColor: Colors.black,
              onChanged: (value) {
                setState(() {
                  _switchOn = !_switchOn;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
