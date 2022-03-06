import 'package:clone_gojek/common/my_colors.dart';
import 'package:clone_gojek/ui/screens/detail2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String url = dotenv.get('URL');

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
                const SizedBox(
                  height: 100,
                ),
                Text(url),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyColors.green)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Back")),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyColors.green)),
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
