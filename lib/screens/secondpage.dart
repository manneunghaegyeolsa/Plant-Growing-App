import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:solvers/designs/color.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int water = 0;
  int waterCount = 2;
  DateTime? vitaminDate = DateTime.now();
  DateTime? soilDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryGreen,
        title: Text("나의 식물",
        style: TextStyle(
          fontFamily: 'Stylish',
          fontSize: 36,
          color: AppColor.white,
        ),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Level. 0',
            style: TextStyle(
              fontSize: 16,
            ),),
            Text('내 식물 별명',
            style: TextStyle(
              fontSize: 18,
            ),),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                //color: Colors.grey[300]
                image: DecorationImage(image: 
                AssetImage('assets/images/plant.webp'),
                fit: BoxFit.cover)
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 300,
              child: LinearPercentIndicator(
                padding: EdgeInsets.all(0),
                lineHeight: 8,
                animation: true,
                animationDuration: 500,
                percent: water/waterCount,
                backgroundColor: Colors.grey[100],
                linearGradient: LinearGradient(colors: [
                  AppColor.primaryGreen,
                  Color(0xff4f7d4a)
                ]),
                barRadius: Radius.circular(8),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      water < waterCount ? confirmMessage('물 주기', AppColor.grayblue, giveWater)
                      : confirmMessage('물 그만!', AppColor.gray, giveWater);
                      
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/water.svg'),
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.grayblue,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      confirmMessage('영양제 주기', AppColor.yellow, null);
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/vitamin.svg'),
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.yellow,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      confirmMessage('분갈이 하기', AppColor.brown, null);
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset('assets/icons/soil.svg'),
                      ),
                      decoration: BoxDecoration(
                        color: AppColor.brown,
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Text('이 식물은 하루에 물을 2번 주어야해요 : $water / $waterCount'),
            Text('마지막으로 영양제를 준 날짜 : ${vitaminDate.toString().substring(0,11)}'),
            Text('마지막으로 분갈이 해준 날짜 : ${soilDate.toString().substring(0,11)}'),
          ],
        )
      ),
    );
  }
  void giveWater(){
    if(water < waterCount){
      setState(() {
        water += 1;
      });
      print(water);
    }
  }

  confirmMessage(msg, color, action) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: 20),
          contentPadding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: AppColor.white,
          surfaceTintColor: Colors.transparent,
          content: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "$msg",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black,
                  ),
               ),
                SizedBox(height: 8),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: AppColor.gray, // 배경 색상
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16), // 패딩
                          shape: RoundedRectangleBorder(
                            // 모양
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '취소',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColor.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          action();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: color,
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          '$msg',
                          style: TextStyle(
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: AppColor.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}