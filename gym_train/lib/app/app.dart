import 'package:flutter/material.dart';
import 'package:gym_train/app/controllers/pages_view_controller.dart';
import 'package:gym_train/app/modules/train_planner.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var blue = Colors.blue;
    var black = Colors.black;
    return MaterialApp(
      title: 'GYM Train Planner',
      theme: ThemeData(
          primaryColor: blue,
          appBarTheme: AppBarTheme(
            backgroundColor: black,
          )),
      initialRoute: '/',
      routes: {PagesViewController.route: (context) => PagesViewController()},
    );
  }
}
