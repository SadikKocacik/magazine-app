import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:magazine_app/constants/styles.dart';

// ignore: must_be_immutable
class WelcomeSlider extends StatelessWidget {
  WelcomeSlider({super.key});
  static const List<String> images = [
    'images/fair.jpg',
    'images/fortune.jpg',
    'images/vogue.jpg',
  ];

  ProjectColors colors = ProjectColors();

  @override
  Widget build(BuildContext context) {
    return FanCarouselImageSlider(
      imageRadius: 20,
      imagesLink: images,
      isAssets: true,
      indicatorActiveColor: colors.slideractivecolor,
      autoPlay: false,
      isClickable: false,
      turns: 200,
    );
  }
}
