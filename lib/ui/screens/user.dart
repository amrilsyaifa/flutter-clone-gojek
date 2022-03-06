import 'package:clone_gojek/model/post_user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/my_colors.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  PostUser? postUser = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Screen"),
        backgroundColor: MyColors.green,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text((postUser != null)
              ? postUser!.id +
                  " | " +
                  postUser!.name +
                  " | " +
                  postUser!.job +
                  " | " +
                  postUser!.created
              : "Tidak ada data"),
          ElevatedButton(
              onPressed: () {
                PostUser.connectToAPI("Amril", "Engineer")
                    .then((value) => {postUser = value, setState(() {})});
              },
              child: const Text("Post"))
        ],
      )),
    );
  }
}
