import 'package:flutter/material.dart';

class ContentOfBottomSheet extends StatelessWidget {
  const ContentOfBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height *
        //     0.7, // 50% of the screen height
        width: MediaQuery.of(context).size.width, // 90% of the screen width
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22.0),
            topRight: Radius.circular(22.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Colors.black54,
              height: 2,
              indent: 150,
              endIndent: 150,
              thickness: 4,
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ': وصف مكان القاعة',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                'أول قاعة من الناحية اليمني عند الدخول من البوابة الرئيسية',
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const Text(': رسمة توضيحية للدور',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/800_57d0b6a8422f2.webp')
          ],
        ),
      ),
    );
  }
}
