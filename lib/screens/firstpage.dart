import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:solvers/designs/color.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryGreen,
        title: Text("추천 식물",
        style: TextStyle(
          fontFamily: 'Stylish',
          fontSize: 36,
          color: AppColor.white,
        ),),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("추천 결과",
                style: TextStyle(
                fontFamily: 'Stylish',
                fontSize: 30,
                color: AppColor.black,
              ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 8,
                    );
                  },
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColor.gray,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          // image: DecorationImage(
                          //   image: AssetImage('assets/images/plant.webp'),
                          //   colorFilter: ColorFilter.mode(
                          //   Colors.black.withOpacity(0.2),
                          //     BlendMode.darken),
                          //   )
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  makePlant('귀여운 풀', 'plantImage');
                                },
                                child: Container(
                                          height: 24,
                                          width: 56,
                                          child: Center(child: Text("키우기", style: TextStyle(color: AppColor.white),)),
                                          decoration: BoxDecoration(
                                            color: AppColor.primaryGreen,
                                            borderRadius: BorderRadius.circular(8)
                                          ),
                                        ),
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 110,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/plant.webp'),
                                      fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      overflow: TextOverflow.clip,
                                      '식물 이름',
                                      style: TextStyle(
                                        fontFamily: 'Stylish',
                                        fontSize: 36,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16,),
                            Text('공작선인장 종류의 생선뼈선인장은 수집가들로 부터 많은 인기를 가지고 있어요.\n 가시가 없고 공중 뿌리가 줄기를 따라 자라나 마치 생선뼈를 닮아 생선뼈 선인장이라고 불리운답니다. 선인장 종류 중 성장이 빠른편이고 물을 좋아하는 편이에요. 충분한 햇빛을 받고 성장하는 여름을 거쳐 기온이 떨어지는 가을에는 꽃이 피어요. 꽃이 피고 난 뒤 맺는 열매는 새콤하고 부드러운 과일푸딩의 맛이 난답니다.'),
                            SizedBox(height: 12,),
                          ],
                        )
                      ),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
  makePlant(plantName, plantImage){
    showDialog(context: context, 
    barrierDismissible: false,
    builder: (content){
      return Dialog(
        backgroundColor: AppColor.white,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              8.0), // 테두리의 둥근 정도 조절
        ),
        child: Padding(padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$plantName', 
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Stylish'),
            ),
            TextFormField(
              decoration: InputDecoration(
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColor.black,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: AppColor.gray,
                                )),
                            hintText: "식물 이름을 지어주세요",
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                              color: AppColor.gray,
                            ),),
            ),
            SizedBox(height: 12,),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.gray,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    child: Text('취소', style: TextStyle(color: AppColor.white),))),
                  SizedBox(width: 8,),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.primaryGreen,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    child: Text('키우기', style: TextStyle(color: AppColor.white),)))
              ],
            )
          ],
        ),),
      );
    });
  }
}