import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final List<String> imageUrls = const [
    'assets/جامعة الزقازيق.png',
    'assets/download.jpeg', // Breakfast image
    'assets/062601024483.jpg',
    'assets/800_57d0b6a8422f2.webp'
  ];

  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200, // Set height explicitly
        enlargeCenterPage: true, // Enlarges the center image
        autoPlay: true, // Enables autoplay
        autoPlayInterval: const Duration(seconds: 2), // Interval for autoplay
        viewportFraction: 1, // Adjust the visible part of next item
        aspectRatio: 16 / 4,
        initialPage: 5,
      ),
      items: imageUrls.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
