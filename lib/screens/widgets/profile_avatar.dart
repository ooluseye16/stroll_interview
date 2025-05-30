import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_interview/utilities/colors.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topRight,
      children: [
        Positioned(
          left: 40.w,
          top: 10.h,
          child: Container(
            padding: REdgeInsets.fromLTRB(32, 4, 8, 4),
            decoration: BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Angelina, 28',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Container(
          height: 60.w,
          width: 60.w,

          decoration: BoxDecoration(
            border: Border.all(color: AppColors.black, width: 10.w),
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/images/avatar.png'),
              fit: BoxFit.cover,
            ),
            color: AppColors.white,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
