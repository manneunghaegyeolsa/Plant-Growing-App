import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solvers/designs/color.dart';
import 'package:solvers/screens/fifthpage.dart';
import 'package:solvers/screens/firstpage.dart';
import 'package:solvers/screens/fourthpage.dart';
import 'package:solvers/screens/secondpage.dart';
import 'package:solvers/screens/thirdpage.dart';

class BottomNaviBar extends StatefulWidget {
  var selectedIndex;
  BottomNaviBar(
    this.selectedIndex,
    {super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState(selectedIndex);
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  _BottomNaviBarState(this.selectedIndex);
  var selectedIndex;
  List _pages = [
    FirstPage(),
    SecondPage(),
    FourthPage(),
    ThirdPage(),
    FifthPage(),
  ];

  Widget bottomNavigatorBarWidget() {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: AppColor.gray,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: AppColor.primaryGreen,
                ),
                label: '홈'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/plant.svg',
                  color: AppColor.gray,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/plant.svg',
                  color: AppColor.primaryGreen,
                ),
                label: '나의식물'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/dashboard.svg',
                  color: AppColor.gray,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/dashboard.svg',
                  color: AppColor.primaryGreen,
                ),
                label: '식물병원'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/challenge.svg',
                  color: AppColor.gray,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/challenge.svg',
                  color: AppColor.primaryGreen,
                ),
                label: '식물도감'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: AppColor.gray,
                ),
                activeIcon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: AppColor.primaryGreen,
                ),
                label: '마이페이지'),
          ],
          currentIndex: selectedIndex,
          unselectedItemColor: AppColor.gray,
          unselectedLabelStyle:
              TextStyle(fontSize: 12),
          selectedItemColor: AppColor.primaryGreen,
          selectedLabelStyle: TextStyle(fontSize: 12),
          backgroundColor: AppColor.white,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedIndex],
      bottomNavigationBar: bottomNavigatorBarWidget(),
    );
  }
}