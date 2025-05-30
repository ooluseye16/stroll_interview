
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_interview/utilities/colors.dart';
import 'package:stroll_interview/utilities/extensions.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.answer,
    required this.index,
    required this.selectedIndex,
    required this.onSelect,
  });
  final String answer;
  final int index;

  final int selectedIndex;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        width: 166.w,
        //height: 57.h,
        decoration: BoxDecoration(
          color: Color(0xff232A2E),
          borderRadius: BorderRadius.circular(12),
          border:
              selectedIndex == index
                  ? Border.all(color: AppColors.primary, width: 2.w)
                  : null,
        ),
        padding: REdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedIndex == index ? AppColors.primary : null,
                border: Border.all(
                  color:
                      selectedIndex == index
                          ? AppColors.primary
                          : Color(0xffC4c4c4),
                  width: 1.w,
                ),
              ),

              padding: REdgeInsets.all(6.0),
              child: Text(
                index == 0
                    ? "A"
                    : index == 1
                    ? "B"
                    : index == 2
                    ? "C"
                    : "D",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            10.width,
            Flexible(
              child: Text(
                answer,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
