import 'package:doctor_hunt/Core/Constants/assets_data.dart';
import 'package:doctor_hunt/Core/Constants/colors.dart';
import 'package:doctor_hunt/Core/Constants/public_data.dart';
import 'package:doctor_hunt/Core/Widgets/texts.dart';
import 'package:doctor_hunt/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Core/Widgets/custom_button.dart';
import '../Widgets/page_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  // final controller = PageController(
  //   initialPage: 0
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:EdgeInsets.fromLTRB(20.w, 25.h, 20.w, 25.h),
        // alignment: Alignment.center,
        // height: double.infinity,
        // width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsData.onBoardingBackground,
          ), fit: BoxFit.fill)
        ),
        child:  Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 100.h,),
            const Expanded(
                // flex: 2,
                child: OnBoardingPageView(

                )),
            RegularButton(
              text: MediumText(text: "Get Started", textColor: theWhite, fontSize: 18.sp),
              width: 678.w,
              height: 54.h,
              borderRadius: 10.r,
              onTap: (){
                // context.watch<StatisticsFilterCubit>().selectedFilter
                setState(() {
                  if(onboardingCounter == 2 || onboardingCounter > 2){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Test()));
                  }else{
                    onboardingCounter++;
                  }
                });

              },
              buttonColor: primeColor,
            ),

            RegularButton(
              text: RegularText(text: "Skip", textColor: textGrayColor, fontSize: 14.sp),
              width: 678.w,
              height: 54.h,
              borderRadius: 10.r,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Test()));
              },
              buttonColor: Colors.transparent,
            ),
            // SizedBox(height: 24.h,)

          ],
        ),

      ),
    );
  }
}
