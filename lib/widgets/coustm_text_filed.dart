import 'package:facultymap/constants.dart';
import 'package:flutter/material.dart';
// import 'package:recipes_app/constants.dart';
// import 'package:recipes_app/views/search_view.dart';

class CostomTextfield extends StatelessWidget {
  const CostomTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, SearchView.id);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: TextField(
          // enabled: false, // Disable text editing
          decoration: InputDecoration(
            filled: true,
            // fillColor: Colors.orange,
            hintText: 'ابحث عن القاعة',
            hintStyle: const TextStyle(
                color: Color.fromARGB(255, 96, 96, 96), fontSize: 18),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: kColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.white, width: 2),
            ),
          ),
          // style: const TextStyle(color: kcolor),
        ),
      ),
    );
  }
}
