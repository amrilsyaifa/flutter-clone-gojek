import 'package:flutter/material.dart';

class Detail2Screen extends StatelessWidget {
  const Detail2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ini Screen Detail 2'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text("Ini Screen Detail 2"),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back'))
        ],
      )),
    );
  }
}
