import 'package:flutter/material.dart';
import 'package:gym_train/app/utils/train_list_item.dart';

class TrainPlannerPage extends StatefulWidget {
  const TrainPlannerPage({Key? key}) : super(key: key);

  //static String route = '/';

  @override
  State<TrainPlannerPage> createState() => _TrainPlannerPageState();
}

class _TrainPlannerPageState extends State<TrainPlannerPage> {
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
        body: ListView.builder(
          itemCount: trainList.length,
          itemBuilder: (context, index) {
            return TrainListItem(trainList[index]);
          },
        ),
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
