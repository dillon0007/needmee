import 'package:flutter/material.dart';
import 'package:needme/constants/global_variables.dart';
import 'package:needme/features/screens/auth_screens.dart';
import 'package:needme/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeedMe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Globalvariables.backgroundColor,
        colorScheme:
            const ColorScheme.light(primary: Globalvariables.secondaryColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Authscreen(),
    );
  }
}
