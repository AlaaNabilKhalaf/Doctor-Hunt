import 'package:doctor_hunt/Core/Constants/assets_data.dart';
import 'package:doctor_hunt/Core/Constants/strings.dart';
import 'package:doctor_hunt/Features/OnBoarding/Presentation/Widgets/page_view_child.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  final Function(int) onPageChanged;

  const OnBoardingPageView({
    super.key,
    required this.onPageChanged, // Pass the onPageChanged callback
  });

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  List<Map<String, dynamic>> pageViewItems = [
    {
      "image": AssetsData.onBoardingAvatarOne,
      "headline": StringData.onBoardingHeadlineOne,
      "text": StringData.onBoardingStringOne,
    },
    {
      "image": AssetsData.onBoardingAvatarTwo,
      "headline": StringData.onBoardingHeadlineTwo,
      "text": StringData.onBoardingStringOne,
    },
    {
      "image": AssetsData.onBoardingAvatarThree,
      "headline": StringData.onBoardingHeadlineThree,
      "text": StringData.onBoardingStringOne,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pageViewItems.length,
      onPageChanged: (val) {
        widget.onPageChanged(val); //! Notify the parent about the page change
      },
      itemBuilder: (BuildContext context, int index) {
        return MyPageViewChild(
          headlineText: pageViewItems[index]["headline"],
          text: pageViewItems[index]["text"],
          image: pageViewItems[index]["image"],
        );
      },
    );
  }
}
