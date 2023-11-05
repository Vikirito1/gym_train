import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /*appBar: AppBar(
        title: const Text('Home'),
      ),*/
      persistentFooterAlignment: AlignmentDirectional.center,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: null,
                    child: Icon(Icons.fitness_center_outlined)),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: null, child: Icon(Icons.shopping_cart)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: null,
                    child: Icon(Icons.fitness_center_outlined)),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: null, child: Icon(Icons.shopping_cart)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
