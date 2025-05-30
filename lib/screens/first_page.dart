import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stroll_interview/screens/widgets/answer_card.dart';
import 'package:stroll_interview/screens/widgets/info_tile.dart';
import 'package:stroll_interview/utilities/colors.dart';
import 'package:stroll_interview/utilities/extensions.dart';
import 'package:stroll_interview/utilities/general_widgets/badge.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List answers = [
    "The peace in the early mornings",
    "The magical golden hours",
    "Wind-down time after dinners",
    "The serenity past midnight",
  ];

  int selectedAnswer = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/video.png'),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 0.5, 0.6],
                colors: [
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.124),
                  Colors.black,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                15.height,
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Stroll Bonfire',
                        style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 34.sp,
                          fontWeight: FontWeight.w700,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 7.9,
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              color: Color(0xffbebebe),
                              blurRadius: 2,
                              offset: Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                      10.width,
                      SvgPicture.asset('arrow_down'.toSvg),
                    ],
                  ),
                ),
                2.height,
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InfoTile(imageName: "time", label: "22h 00m"),
                      10.width,
                      InfoTile(imageName: "person", label: "103"),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: REdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
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
                                    border: Border.all(
                                      color: AppColors.black,
                                      width: 10.w,
                                    ),
                                    image: DecorationImage(
                                      alignment: Alignment.bottomCenter,
                                      image: AssetImage(
                                        'assets/images/avatar.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    color: AppColors.white,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                            12.width,
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  42.height,
                                  Text(
                                    'What is your favorite time of the day?',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.height,
                      Text(
                        "“Mine is definitely the peace in the morning.”",
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: AppColors.secondaryLight.withOpacity(0.7),
                        ),
                      ),
                      14.height,
                      Wrap(
                        spacing: 10.w,
                        runSpacing: 10.h,
                        children: List.generate(
                          answers.length,
                          (index) => AnswerCard(
                            index: index,
                            selectedIndex: selectedAnswer,
                            onSelect: () {
                              // Handle answer selection
                              setState(() {
                                selectedAnswer = index;
                              });
                            },
                            answer: answers[index],
                          ),
                        ),
                      ),
                      11.height,
                      Row(
                        children: [
                          Text(
                            "Pick your option. \nSee who has a similar mind.",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                            ),
                          ),
                          Spacer(),
                          SvgPicture.asset('voice_button'.toSvg),
                          6.width,
                          SvgPicture.asset('go_button'.toSvg),
                        ],
                      ),
                      8.height,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xff0F1115),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('home'.toSvg),
            label: "Home",
            backgroundColor: Color(0xff0F1115),
          ),
          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                SvgPicture.asset('trending'.toSvg),
                Positioned(right: -5.w, child: AppBadge(value: "  ")),
              ],
            ),
            label: "Trending",
          ),
          BottomNavigationBarItem(
            icon: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topRight,
              children: [
                SvgPicture.asset('message'.toSvg),
                Positioned(right: -5.w, child: AppBadge(value: "10")),
              ],
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'person'.toSvg,
              width: 20.w,
              colorFilter: ColorFilter.mode(Color(0xff6F6E7C), BlendMode.srcIn),
            ),
            label: "account",
          ),
        ],
      ),
    );
  }
}
