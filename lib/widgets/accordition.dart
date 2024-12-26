import 'package:accordion/accordion.dart';
import 'package:facultymap/constants.dart';
import 'package:facultymap/views/biulding_View.dart';
import 'package:flutter/material.dart';

Widget buildAccordionItem({
  required String biuldingName,
  // required String content,
}) {
  return Accordion(
    headerBackgroundColor: Colors.grey, // Dark blue header
    headerPadding: const EdgeInsets.all(16.0),

    contentBackgroundColor: const Color(0xffE6E0E9), // Same background color
    // contentPadding: const EdgeInsets.all(16.0),

    leftIcon: const Icon(
      Icons.expand_more,
      color: Colors.black, // Gold-like color for the icon
    ),

    flipLeftIconIfOpen: true, // Automatically flips icon when open
    flipRightIconIfOpen: false,
    headerBorderRadius: 22.0, // Rounded corners for the header
    contentBorderRadius: 16.0,
    paddingListBottom: 0,
    paddingListTop: 0,
    paddingListHorizontal: 0,
    disableScrolling: true,
    openAndCloseAnimation: true,
    scaleWhenAnimating: false,

    children: [
      AccordionSection(
        headerBackgroundColor: Colors.transparent,
        contentBorderColor: Colors.transparent,
        headerBorderColor: Colors.grey,
        headerBorderWidth: 1,
        headerBorderRadius: 12,
        headerBorderColorOpened: Colors.grey,
        header: Text(
          biuldingName,
          style: const TextStyle(
            // color: kColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            // fontFamily: 'Amiri', // Arabic font recommendation
          ),
          textAlign: TextAlign.right,
        ),
        headerPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        content: Column(
          children: [
            ListTileCoustm(
              levelNumber: 'الدور الاول',
              biuldingName: biuldingName,
            ),
            ListTileCoustm(
                levelNumber: 'الدور الثاني', biuldingName: biuldingName),
            ListTileCoustm(
                levelNumber: 'الدور الثالث', biuldingName: biuldingName),
            ListTileCoustm(
                levelNumber: 'الدور الرابع', biuldingName: biuldingName),
            ListTileCoustm(
                levelNumber: 'الدور الخامس', biuldingName: biuldingName),
          ],
        ),
      )
    ], // Rounded corners for the content
  );
}

class ListTileCoustm extends StatelessWidget {
  const ListTileCoustm({
    super.key,
    required this.levelNumber,
    required this.biuldingName,
  });
  final String levelNumber;
  final String biuldingName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      borderRadius:
          BorderRadius.circular(14), // Ensure splash is within rounded corners
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return BiuldingView(
                biludingName2: biuldingName,
                levelNumber2: levelNumber,
              );
            },
          ),
        );
      },
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                levelNumber,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'Amiri',
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
        subtitle: const Divider(),
      ),
    );
  }
}
