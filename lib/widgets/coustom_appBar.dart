import 'package:facultymap/constants.dart';
import 'package:flutter/material.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({
    super.key,
  });
  // final String title;
  // final IconData icon;
  // final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 32),
      child: Row(
        children: [
          Text(
            'Faculty',
            style: TextStyle(
                color: kColor, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(
            'Map',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 1,
          ),
          Icon(
            Icons.settings,
            size: 32,
            color: kColor,
          )
        ],
      ),
    );
  }
}
