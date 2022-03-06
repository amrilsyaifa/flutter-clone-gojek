import 'package:clone_gojek/ui/bottomNavigation/home_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  // To load the .env file contents into dotenv.
  // NOTE: fileName defaults to .env and can be omitted in this case.
  // Ensure that the filename corresponds to the path in step 1 and 2.
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IndoJek',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const HomeBottomNavigation(),
    );
  }
}
