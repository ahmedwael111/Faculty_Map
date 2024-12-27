import 'package:facultymap/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomMapPottom extends StatelessWidget {
  const CostomMapPottom({super.key});
  // String text;
  // VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: kColor,
          borderRadius: BorderRadius.circular(26),
          // border: const Border.fromBorderSide(
          //   BorderSide(color: kColor, width: 2.0), // Grey border
          // ),
        ),
        height: 48,
        width: 170,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 32,
              color: Colors.white,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              'خريطة الكلية',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
