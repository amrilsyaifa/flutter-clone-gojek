import 'package:clone_gojek/common/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int timer = 800, offset = 0;

  Widget box() {
    return Container(
      height: 100,
      width: 100,
      color: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: const Text("Profile Screen"),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: 8,
          itemBuilder: (BuildContext ctx, index) {
            offset += 50;
            timer = 800 + offset;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Shimmer.fromColors(
                baseColor: MyColors.gray,
                highlightColor: Colors.white,
                period: Duration(milliseconds: timer),
                child: box(),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.green,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
