import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:solvers/designs/color.dart';
import 'package:solvers/screens/bottomnavibar.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  List<String> sun = ['들어옴','안들어옴'];
  List<String> size = ['작은 식물', '큰 식물'];
  List<String> job = ['야간', '주간'];
  List<String> pet = ['있음','없음'];
  String sunn = '들어옴';
  String sizee = '작은 식물';
  String pett = '없음';
  String jobb = '야간 근무';


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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('직사광선 유무'),
              SizedBox(height: 12,),
              GestureDetector(
              onTap: (){
                  showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return sunSelect();
                });
                },
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColor.brown,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Text(sunn),
                      Spacer(),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('키우고 싶은 식물의 크기'),
              SizedBox(height: 12,),
              GestureDetector(
                onTap: (){
                    showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  builder: (context) {
                    return sizeSelect();
                  });
                  },
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColor.brown,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Text(sizee),
                      Spacer(),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('주 활동 시간'),
              SizedBox(height: 12,),
              // TextFormField(
              //   decoration: InputDecoration(
              //     isDense: true,
              //     contentPadding: const EdgeInsets.symmetric(
              //         vertical: 12, horizontal: 16),
              //     focusedBorder: const OutlineInputBorder(
              //       borderSide: BorderSide(
              //         color: AppColor.brown,
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(8),
              //         borderSide: BorderSide(
              //           color: AppColor.brown,
              //         )),
              //     hintText: "직업을 입력해주세요",
              //     hintStyle: TextStyle(
              //       fontSize: 14,
              //       fontFamily: 'Pretendard',
              //       fontWeight: FontWeight.w400,
              //       color: AppColor.gray,
              //     ),),
              // ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return jobSelect();
                });
                },
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColor.brown,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Text(jobb),
                      Spacer(),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('반려동물 유무'),
              SizedBox(height: 12,),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (context) {
                  return petSelect();
                });
                },
                child: Container(
                  height: 40,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: AppColor.brown,
                    ),
                    color: Colors.transparent,
                  ),
                  child: Row(
                    children: [
                      Text(pett),
                      Spacer(),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNaviBar(0), // 1은 SecondPage를 나타냅니다.
                        ),
                        (route) => false, // 모든 페이지를 제거하고 SecondPage가 새로운 첫 번째 페이지로 됩니다.
                      );
              },
              child: Container(
                width: double.maxFinite,
                height:48,
                child: Center(
                  child: Text("식물 추천 받으러 가기",
                            style: TextStyle(
                  fontSize: 18,
                  color: AppColor.white,
                            ),),
                ),
              decoration: BoxDecoration(
                color: AppColor.primaryGreen,
                borderRadius: BorderRadius.circular(8)
              ),),
            ),
            ],
          ),
        ),
      ),
    );
  }
  sunSelect() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '직사광선 유무',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: sun.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          sunn = sun[index];
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Text(
                          sun[index],
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
  sizeSelect() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '식물의 크기',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: size.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          sizee = size[index];
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Text(
                          sizee,
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
  petSelect() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '반려동물 유무',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: pet.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          pett = pet[index];
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Text(
                          pet[index],
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
  jobSelect() {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: const BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                '주 활동 시간',
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: job.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        setState(() {
                          jobb = job[index];
                        });
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        child: Text(
                          job[index],
                          style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: AppColor.black,
                          ),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}