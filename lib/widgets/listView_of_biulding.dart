import 'package:facultymap/widgets/accordition.dart';
import 'package:facultymap/widgets/building_item.dart';
import 'package:flutter/material.dart';

class ListViewOfBiulding extends StatelessWidget {
  const ListViewOfBiulding({
    super.key,
    required this.biuldingList,
  });

  final List biuldingList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: biuldingList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: buildAccordionItem(biuldingName: biuldingList[index]),
          );
        },
      ),
    );
  }
}
