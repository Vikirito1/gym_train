import 'dart:ffi';

import 'package:flutter/material.dart';

class TrainListItem extends StatelessWidget {
  final int trainNumber;

  const TrainListItem(this.trainNumber, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey,
      ),
      height: 80,
      child: Row(
        children: [
          Container(
              width: 340,
              padding:
                  const EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Supino Reto $trainNumber',
                      style: const TextStyle(fontSize: 30)),
                  const SizedBox(height: 5),
                  const Text('3x10',
                      style: TextStyle(fontSize: 20, color: Colors.white))
                ],
              )),
          Container(
            width: 48,
            height: 48,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.expand_more),
            ),
          )
        ],
      ),
    );
  }
}
