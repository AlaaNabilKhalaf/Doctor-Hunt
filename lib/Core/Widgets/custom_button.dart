import 'package:flutter/cupertino.dart';

class RegularButton extends StatelessWidget {
  const RegularButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.buttonColor,
    required this.borderRadius,
    required this.onTap
  });

  final Widget text ;
  final double width;
  final double height;
  final Color buttonColor ;
  final double borderRadius ;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        onTap();
      },
      child: Container(
        alignment: Alignment.center,
        height: height, width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: text,
      ),
    );
  }
}
