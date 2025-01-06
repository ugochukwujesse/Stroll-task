import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_bonfire/app/modules/Dashboard/presentation/fragments/chat_fragment.dart';
import 'package:stroll_bonfire/app/modules/Dashboard/presentation/fragments/match_fragment.dart';
import 'package:stroll_bonfire/app/modules/Dashboard/presentation/fragments/my_profile_fragment.dart';
import 'package:stroll_bonfire/app/modules/Dashboard/presentation/fragments/trends_fragment.dart';
import 'package:stroll_bonfire/core/framework/theme/colors/app_colors.dart';

import '../../../../core/framework/app_images/app_images.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List pages = [
    const MatchFragment(),
    const TrendsFragment(),
    const ChatFragment(),
    const MyProfileFragment(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showSelectedLabels: false,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavBarColor,
            icon: SvgPicture.asset(Svgs.card),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Svgs.bonfire),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Svgs.chatIconBonfire),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Svgs.user),
            label: "",
          ),
        ],
      ),
    );
  }
}
