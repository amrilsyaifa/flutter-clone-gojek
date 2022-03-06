import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/my_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: MyColors.green,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: const Center(child: Text("Profile Screen")),
    );
  }
}
