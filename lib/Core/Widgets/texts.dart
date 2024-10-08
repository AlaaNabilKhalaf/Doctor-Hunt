import 'package:doctor_hunt/Core/Constants/fonts.dart';
import 'package:flutter/cupertino.dart';

class DefaultText extends StatelessWidget {
 const DefaultText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontFamily,
    required this.fontSize,
    this.textOverflow,
    this.maxLine,
    this.letterSpacing,
    this.textAlign,
    this.textDirection
  });

  final double fontSize ;
  final double? letterSpacing;
  final String text ;
  final String fontFamily ;
  final int? maxLine;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      overflow: textOverflow?? TextOverflow.ellipsis,
      textAlign: textAlign?? TextAlign.center,
      maxLines: maxLine,
      textDirection: textDirection,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontFamily: fontFamily,
            color: textColor,
      ),
    );
  }
}

class RegularText extends StatelessWidget {
  const RegularText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontSize,
    this.textOverflow,
    this.maxLine,
    this.letterSpacing,
    this.textAlign,
    this.textDirection
  });

  final double fontSize ;
  final double? letterSpacing;
  final String text ;
  final int? maxLine;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      overflow: textOverflow?? TextOverflow.ellipsis,
      textAlign: textAlign?? TextAlign.center,
      maxLines: maxLine,
      textDirection: textDirection,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontFamily: regularFont,
        color: textColor,
      ),
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontSize,
    this.textOverflow,
    this.maxLine,
    this.letterSpacing,
    this.textAlign,
    this.textDirection
  });

  final double fontSize ;
  final double? letterSpacing;
  final String text ;
  final int? maxLine;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      overflow: textOverflow?? TextOverflow.ellipsis,
      textAlign: textAlign?? TextAlign.center,
      maxLines: maxLine,
      textDirection: textDirection,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontFamily: mediumFont,
        color: textColor,
      ),
    );
  }
}

class LightText extends StatelessWidget {
  const LightText({
    super.key,
    required this.text,
    required this.textColor,
    required this.fontSize,
    this.textOverflow,
    this.maxLine,
    this.letterSpacing,
    this.textAlign,
    this.textDirection
  });

  final double fontSize ;
  final double? letterSpacing;
  final String text ;
  final int? maxLine;
  final Color textColor;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {

    return Text(
      text,
      overflow: textOverflow?? TextOverflow.ellipsis,
      textAlign: textAlign?? TextAlign.center,
      maxLines: maxLine,
      textDirection: textDirection,
      style: TextStyle(
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        fontFamily: lightFont,
        color: textColor,
      ),
    );
  }
}

