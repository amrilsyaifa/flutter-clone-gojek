import 'package:clone_gojek/ui/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/my_colors.dart';
import '../../common/my_font_size.dart';
import '../widgets/custom_button_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<bool> tabBarBadgeList = [false, false, false, true];

  List tabBarList = ["Beranda", "Promo", "Pesanan", "Chat"];

 
  int tabBarIndex = 0;

  int balanceBalance = 0;

 
  @override
  Widget build(BuildContext context) {
      Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(4),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: (tabBarIndex == index)
                        ? MyColors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(100)),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      tabBarIndex = index;
                    });
                  },
                  child: Center(
                    child: Text(
                      tabBarList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: (tabBarIndex == index)
                              ? MyColors.darkGreen
                              : MyColors.white,
                          fontSize: MyFontSize.medium1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            if (tabBarBadgeList[index])
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: MyColors.red,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: MyColors.white, width: 1.5)),
                  child: Center(
                    child: Container(
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                        color: MyColors.white,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
          ],
        ),
      );
    }

    Widget searchBox() {
      return Row(
        children: [
          Expanded(
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                    color: MyColors.whiteL2,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: MyColors.softGray, width: 1.5)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: MyColors.blackText,
                      size: 35,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Text(
                      "Cari layanan, makanan, & tujuan",
                      style: TextStyle(
                          color: MyColors.gray, fontSize: MyFontSize.medium1),
                    ))
                  ],
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              "https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          )
        ],
      );
    }

    Widget infoBalance() {
      return Container(
        height: 150,
        decoration: BoxDecoration(
            color: MyColors.blue, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  (2),
                  (index) => Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                    height: 16,
                    width: 4,
                    decoration: BoxDecoration(
                        color: (balanceBalance == index)
                            ? MyColors.white
                            : MyColors.softGray,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                )
              ],
            ),
            Container(
              height: 90,
              width: 150,
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: 'assets/images/icons/ic_bayar.png',
                text: "Bayar",
                fontColor: MyColors.white,
                height: 35,
                width: 35,
                isBold: true,
              ),
            ),
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: 'assets/images/icons/ic_topup.png',
                text: "Top Up",
                fontColor: MyColors.white,
                height: 35,
                width: 35,
                isBold: true,
              ),
            ),
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: 'assets/images/icons/ic_eksplor.png',
                text: "Explore",
                fontColor: MyColors.white,
                height: 35,
                width: 35,
                isBold: true,
              ),
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar(),
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: MyColors.green),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          searchBox(),
          const SizedBox(
            height: 20,
          ),
          infoBalance(),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const DetailScreen(),
                ));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(MyColors.green)),
              child: const Text("Ke Screen Detail")),
        ],
      ),
      
    );
  }
}