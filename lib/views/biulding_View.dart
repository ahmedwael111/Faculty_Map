import 'package:accordion/accordion.dart';
import 'package:facultymap/widgets/accordition.dart';
import 'package:facultymap/widgets/building_item.dart';
import 'package:flutter/material.dart';

class BiuldingView extends StatelessWidget {
  const BiuldingView(
      {super.key, required this.biludingName2, required this.levelNumber2});
  final String biludingName2;
  final String levelNumber2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              " $biludingName2 > $levelNumber2",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 19,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
              child: TaskItem(biuldingName: 'الرَّحِيمُ'),
            );
          },
        ),
      ),
    );
  }
}
