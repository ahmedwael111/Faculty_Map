import 'package:facultymap/constants.dart';
import 'package:facultymap/widgets/building_item.dart';
import 'package:facultymap/widgets/carosil.dart';
import 'package:facultymap/widgets/coustm_text_filed.dart';
import 'package:facultymap/widgets/coustom_appBar.dart';
import 'package:facultymap/widgets/coustom_map_bottom.dart';
import 'package:facultymap/widgets/listView_of_biulding.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static List biuldingList = [
    'مبني رياضة',
    'مبني الادارة',
    'مبني المعامل',
    'مبني أساسي',
    'مبني شلبي',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Faculty',
              style: TextStyle(
                  color: kColor, fontWeight: FontWeight.bold, fontSize: 32),
            ),
            Text(
              'Map',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 1,
            ),
            Icon(
              Icons.account_circle_rounded,
              color: kColor,
              size: 38,
            ),
            Icon(
              Icons.settings,
              size: 38,
              color: kColor,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            // const CostomAppBar(),
            const SizedBox(
              height: 20,
            ),
            const CostomTextfield(),
            const SizedBox(
              height: 20,
            ),
            const Carousel(),
            const SizedBox(
              height: 20,
            ),
            // const CostomMapPottom(),
            const SizedBox(
              height: 10,
            ),
            ListViewOfBiulding(biuldingList: biuldingList)
          ],
        ),
      ),
      floatingActionButton: const CostomMapPottom(),
    );
  }
}
