import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 3),
    //     NavigatorUntil.pushReplacementNamed(context, Routes.home));
    // _initAsync();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            {
              return Image(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.fill,
              );
            }

          case 1:
            {
              return Image(
                image: AssetImage('assets/images/splash.png'),
                fit: BoxFit.fill,
              );
            }

          default:
            {
              return Container(
                color: Colors.blue,
                child: Stack(
                  alignment: Alignment(1, -0.9),
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.red,
                      child: Image(
                        image: AssetImage('assets/images/splash.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "跳过",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        NavigatorUntil.pushReplacementNamed(
                            context, Routes.home);
                        // NavigatorUntil.push(context, Routes.home);
                        // NavigatorUntil.pushReplacement(context, Routes.home);
                      },
                    ),
                  ],
                ),
              );
            }
        }
      },
      itemCount: 3,
      loop: false,
      physics: ClampingScrollPhysics(),
      pagination: new SwiperPagination(),
      // control: new SwiperControl(),
    );
  }
}
