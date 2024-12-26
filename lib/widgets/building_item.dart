import 'package:facultymap/constants.dart';
import 'package:facultymap/views/biulding_View.dart';
import 'package:facultymap/widgets/show_bottom_sheet.dart';
import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.biuldingName});
  final String biuldingName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white.withOpacity(0.2),
      splashColor: kColor.withAlpha(100),
      borderRadius:
          BorderRadius.circular(14), // Ensure splash is within rounded corners
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(88)),
          context: context,
          builder: (context) {
            return const ContentOfBottomSheet();
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(14)),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios),
                const Spacer(
                  flex: 1,
                ),
                Text(
                  biuldingName,
                  style: const TextStyle(fontSize: 22),
                )
              ],
            )),
      ),
    );
  }
}
