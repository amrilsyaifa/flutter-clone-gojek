import 'package:clone_gojek/common/my_colors.dart';
import 'package:clone_gojek/ui/screens/detail2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Screen"),
        backgroundColor: MyColors.green,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                const Text("Ini Screen Detail"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Back")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Detail2Screen(),
                          ));
                        },
                        child: const Text("Go to Detail 2 Screen")),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
