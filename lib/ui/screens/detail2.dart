import 'package:clone_gojek/common/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Detail2Screen extends StatelessWidget {
  const Detail2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: const Text('Ini Screen Detail 2'),
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Ini Screen Detail 2"),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(MyColors.green)),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'))
        ],
      )),
    );
  }
}
