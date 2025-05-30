
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_interview/utilities/colors.dart';
import 'package:stroll_interview/utilities/extensions.dart';

class InfoTile extends StatelessWidget {
  const InfoTile({super.key, required this.imageName, required this.label});
  final String imageName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(imageName.toSvg),
        4.width,
        Text(
          label,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12.sp,
            height: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}