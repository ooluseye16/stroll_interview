import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizeBoxExtension on num {
  SizedBox get height => SizedBox(height: h);
  SizedBox get width => SizedBox(width: w);
}

extension ImagePath on String {
  String get toPng => 'assets/images/$this.png';
  String get toSvg => 'assets/images/$this.svg';
}