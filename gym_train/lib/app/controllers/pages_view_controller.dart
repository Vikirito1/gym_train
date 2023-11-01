import 'package:flutter/material.dart';
import 'package:gym_train/app/modules/train_planner.dart';
import 'package:gym_train/app/pages/home_page.dart';

class PagesViewController extends StatefulWidget {
  const PagesViewController({super.key});

  static String route = '/';

  @override
  State<PagesViewController> createState() => _PagesViewControllerState();
}

class _PagesViewControllerState extends State<PagesViewController> {
  late final PageController _page$;

  late int _selectedPage;

  @override
  void initState() {
    super.initState();
    _selectedPage = 0;
    _page$ = PageController();
  }

  @override
  void dispose() {
    _page$.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym App Logo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: PageView(
        controller: _page$,
        onPageChanged: (page) => setState(() {
          _selectedPage = page;
        }),
        children: const [
          HomePage(),
          TrainPlanner(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedPage,
          onDestinationSelected: (value) => setState(() {
                _selectedPage = value;
                _page$.animateToPage(value,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut);
              }),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.fitness_center),
              label: 'Train',
            ),
          ]),
    );
  }
}
