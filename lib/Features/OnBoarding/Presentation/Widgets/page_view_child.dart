import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Constants/colors.dart';
import '../../../../Core/Widgets/texts.dart';

class MyPageViewChild extends StatelessWidget {
  const MyPageViewChild({
    super.key,
  required this.headlineText,
    required this.text,
    required this.image
  });

  final String headlineText ;
  final String text ;
  final String image ;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SizedBox(height: 85.h,),
              MediumText(text: headlineText, textColor: theBlack, fontSize: 28.sp),
              SizedBox(height: 11.h,),
              RegularText(text: text, textColor: textGrayColor, fontSize: 18.sp ,maxLine: 4,),
            ],
          ),
        )


      ],
    );
  }
}
