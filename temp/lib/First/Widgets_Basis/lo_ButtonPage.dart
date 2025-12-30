// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// class LOButtonPage extends StatefulWidget {
//   LOButtonPage({Key? key}) : super(key: key);

// TODO: 按钮组件

//   @override
//   _LOButtonPageState createState() => _LOButtonPageState();
// }

// class _LOButtonPageState extends State<LOButtonPage> {
//   String? _dropValue = '语文';
//   List<bool> _selecteds = [false, false, true];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Button"),
//       ),
//       body: Container(
//         child: SafeArea(
//           child: ListView(
//             children: [
//               Container(
//                 height: 20,
//                 width: 20,

//                 child: new AspectRatio(
//                   aspectRatio: 4 / 3,
//                   child: new Container(
//                     color: Colors.red,

//                   ),
//                 ),
//               ),

//               Placeholder(
//                 color: Colors.red, // 线条颜色
//                 strokeWidth: 3, // 线条粗细
//                 fallbackWidth: 120, // 未约束时的默认宽度
//                 fallbackHeight: 80, // 未约束时的默认高度
//               ),

//               TextButton(
//                 child: Text("TextButton1.22新增"),
//                 onPressed: () {
//                   debugPrint("TextButton");
//                 },
//               ),
//               OutlinedButton(
//                 child: Text("OutlinedButton1.22新增"),
//                 onPressed: () {},
//               ),
//               ElevatedButton(
//                 child: Text("ElevatedButton1.22新增"),
//                 style: ButtonStyle(
//                     textStyle:
//                         MaterialStateProperty.all(TextStyle(fontSize: 20)),
//                     foregroundColor:
//                         MaterialStateProperty.resolveWith((states) {
//                       return states.contains(MaterialState.pressed)
//                           ? Colors.black
//                           : Colors.red;
//                     }),
//                     overlayColor:
//                         MaterialStateProperty.all(Colors.transparent)),
//                 onPressed: () {},
//               ),
//               //风格”凸起“的按钮
//               ElevatedButton(
//                 child: Text("RaisedButton"),
//                 //去除水波纹 Colors.transparent
//                 // splashColor: Colors.red,
//                 onPressed: () {},
//               ),
//               //扁平的按钮
//               ElevatedButton(
//                 child: Text('FlatButton'),
//                 // color: Colors.blue,
//                 onPressed: () {},
//               ),
//               //带边框的按钮
//               OutlinedButton(
//                 child: Text('OutlineButton'),
//                 onPressed: () {},
//               ),

//               //图标按钮
//               IconButton(
//                 tooltip: '这是一个图标按钮',
//                 icon: Icon(Icons.person),
//                 iconSize: 30,
//                 color: Colors.red,
//                 onPressed: () {},
//               ),

//               //末端对齐
//               ButtonBar(
//                 children: <Widget>[
//                   ElevatedButton(
//                     child: Text("RaisedButton"),
//                     onPressed: () {},
//                   ),
//                   ElevatedButton(
//                     child: Text("RaisedButton"),
//                     onPressed: () {},
//                   ),
//                   ElevatedButton(
//                     child: Text("RaisedButton"),
//                     onPressed: () {},
//                   ),
//                   ElevatedButton(
//                     child: Text("RaisedButton"),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//               // 点击时默认执行pop 图标是返回
//               BackButton(),
//               // 点击时默认执行pop 图标是叉
//               CloseButton(),

//               DropdownButton(
//                 value: _dropValue,
//                 items: [
//                   DropdownMenuItem(
//                     child: Text('语文'),
//                     value: '语文',
//                   ),
//                   DropdownMenuItem(child: Text('数学'), value: '数学'),
//                   DropdownMenuItem(child: Text('英语'), value: '英语'),
//                 ],
//                 onChanged: (dynamic value) {
//                   setState(() {
//                     _dropValue = value;
//                   });
//                 },
//               ),

//               //它不使用当前的系统主题和按钮主题，用于自定义按钮或者合并现有的样式
//               RawMaterialButton(
//                 onPressed: () {},
//                 fillColor: Colors.blue,
//                 child: Text('RawMaterialButton'),
//               ),
//               //菜单选中控件
//               PopupMenuButton<String>(
//                 shape: RoundedRectangleBorder(
//                     side: BorderSide(color: Colors.red),
//                     borderRadius: BorderRadius.circular(10)),
//                 itemBuilder: (context) {
//                   return <PopupMenuEntry<String>>[
//                     PopupMenuItem<String>(
//                       value: '语文',
//                       child: Text('语文'),
//                     ),
//                     PopupMenuItem<String>(
//                       value: '数学',
//                       child: Text('数学'),
//                     ),
//                     PopupMenuItem<String>(
//                       value: '英语',
//                       child: Text('英语'),
//                     ),
//                     PopupMenuItem<String>(
//                       value: '生物',
//                       child: Text('生物'),
//                     ),
//                     PopupMenuItem<String>(
//                       value: '化学',
//                       child: Text('化学'),
//                     ),
//                   ];
//                 },
//               ),

// //ToggleButtons组件将多个组件组合在一起
//               ToggleButtons(
//                 borderRadius: BorderRadius.circular(30),
//                 borderWidth: 3,
//                 color: Colors.green,
//                 selectedColor: Colors.orange,
//                 fillColor: Colors.red,
//                 isSelected: _selecteds,
//                 children: <Widget>[
//                   Icon(Icons.local_cafe),
//                   Icon(Icons.fastfood),
//                   Icon(Icons.cake),
//                 ],
//                 onPressed: (index) {
//                   setState(() {
//                     _selecteds[index] = !_selecteds[index];
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
// import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';

class LOButtonPage extends StatefulWidget {
  LOButtonPage({Key? key}) : super(key: key);

  @override
  _LOButtonPageState createState() => _LOButtonPageState();
}

class _LOButtonPageState extends State<LOButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: SizedBox(
            width: 40,
            // height: 40,
            // width: double.infinity,
            child: new AspectRatio(
              aspectRatio: 2 / 4,
              child: new Container(color: Colors.red, width: double.infinity),
            ),
          ),
        ),
      ),
      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       pinned: true,
      //       expandedHeight: 200,
      //       flexibleSpace: FlexibleSpaceBar(title: Text('标题')),
      //     ),
      //     SliverToBoxAdapter(
      //       child: Container(
      //         height: 100,
      //         color: Colors.blue,
      //         alignment: .center,
      //       ),
      //     ),
      //     SliverGrid(
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 3,
      //         crossAxisSpacing: 8,
      //         mainAxisSpacing: 8,
      //       ),
      //       delegate: SliverChildBuilderDelegate(
      //         (context, index) => Container(
      //           color: Colors.teal,
      //           child: Center(child: Text('$index')),
      //         ),
      //         childCount: 30,
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         (context, index) => ListTile(title: Text('Item $index')),
      //         childCount: 50,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
