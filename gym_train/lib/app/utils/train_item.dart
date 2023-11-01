import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TrainItem extends StatelessWidget {
  final int trainNumber;

  const TrainItem(this.trainNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      child: Row(
        children: [Text('Treino $trainNumber')],
      ),
    );
  }
}
