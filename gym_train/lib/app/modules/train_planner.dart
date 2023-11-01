import 'package:flutter/material.dart';
import 'package:gym_train/app/utils/bottom_bar.dart';
import 'package:gym_train/app/utils/train_list_item.dart';

class TrainPlanner extends StatefulWidget {
  const TrainPlanner({Key? key}) : super(key: key);

  //static String route = '/';

  @override
  State<TrainPlanner> createState() => _TrainPlannerState();
}

class _TrainPlannerState extends State<TrainPlanner> {
  final List<int> trainList = [];

  addTrainItem(List list) {
    list.add(list.last + 1);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: const Text('Gym Training Planner'),
          backgroundColor: Colors.blueAccent,
        ),*/
        body: ListView.builder(
          itemCount: trainList.length,
          itemBuilder: (context, index) {
            return TrainListItem(trainList[index]);
          },
        ),
        // bottomNavigationBar: const BottomBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (trainList.isNotEmpty) {
                addTrainItem(trainList);
              } else {
                trainList.add(1);
              }
            });
          },
          tooltip: 'Novo Exercício',
          child: const Icon(Icons.add),
        ));
  }
}
