import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:temp/Second/Provider/lo_Provider_counter.dart';
import 'package:temp/untils/routers/navigatorUntil.dart';
import 'package:temp/untils/routers/routes.dart';

class LOProviderPage extends StatelessWidget {
  const LOProviderPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body:
          //需要在App root 中才能传到下个界面
          // MultiProvider(
          //   providers: [
          //     ChangeNotifierProvider(create: (_) => LOProviderCounter()),
          //   ],
          //   child:
          Container(
        child: Center(
          child: Column(
            children: [
              //显示
              Consumer<LOProviderCounter>(builder: (ctx, counterPro, child) {
                return Text("${counterPro.providerCounter}");
              }),

              Consumer<LOProviderCounter>(
                builder: (ctx, counterPro, child) {
                  return TextButton(
                    child: Text("+"),
                    onPressed: () {
                      counterPro.providerIncrement();
                    },
                  );
                },
              ),
              TextButton(
                child: Text("jump"),
                onPressed: () {
                  NavigatorUntil.push(context, Routes.loProviderChildPage);
                },
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
