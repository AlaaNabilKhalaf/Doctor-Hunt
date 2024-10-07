import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  const SvgImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.color

  });

  final String imagePath ;
  final double? height ;
  final double? width ;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      height: height,
      width: width,
      colorFilter: color == null? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
