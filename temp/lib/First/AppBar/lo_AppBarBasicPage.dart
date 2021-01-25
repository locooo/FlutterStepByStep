import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOAppBarBasicPage extends StatefulWidget {
  LOAppBarBasicPage({Key key}) : super(key: key);

  @override
  _LOAppBarBasicPageState createState() => _LOAppBarBasicPageState();
}

class _LOAppBarBasicPageState extends State<LOAppBarBasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarBasic"),
        //是否显示在任务栏顶部
        primary: true,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.purple,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("onPressed");
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Column(
            children: [
              AppBar(
                title: Text("title"),
                //标题居中
                centerTitle: true,
                //横轴上围绕title内容的间距 0.0即占据所有有用空间
                titleSpacing: 0,
                // 背景颜色
                backgroundColor: Colors.pink,

                actions: [
                  // 按钮1
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  // 按钮2
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
              AppBar(
                title: Text("title"),
                //标题居中
                centerTitle: true,
                //横轴上围绕title内容的间距 0.0即占据所有有用空间
                titleSpacing: 0,
                // 背景颜色
                backgroundColor: Colors.pink,
                //左侧按钮
                leading: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                actions: [
                  // 按钮1
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {},
                  ),
                  // 按钮2
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
