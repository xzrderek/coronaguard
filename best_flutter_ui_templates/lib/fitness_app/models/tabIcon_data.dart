import 'package:flutter/material.dart';

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/fitness_app/home.png',
      selectedImagePath: 'assets/fitness_app/home1.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/education.png',
      selectedImagePath: 'assets/fitness_app/education1.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/faq.png',
      selectedImagePath: 'assets/fitness_app/faq2.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/fitness_app/settings.png',
      selectedImagePath: 'assets/fitness_app/settings1.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
  ];
}
