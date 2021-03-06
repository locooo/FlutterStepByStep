import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:temp/Second/Provider/lo_Provider_counter.dart';

class LOProviderChildPage extends StatelessWidget {
  const LOProviderChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
