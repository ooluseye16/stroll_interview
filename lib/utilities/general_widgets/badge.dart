import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_interview/utilities/colors.dart';

class AppBadge extends StatelessWidget {
  const AppBadge({super.key, required this.value});
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        value,
        style: TextStyle(fontSize: 7.sp, fontWeight: FontWeight.w700),
      ),
    );
  }
}