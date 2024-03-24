import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:solvers/designs/color.dart';
import 'package:solvers/screens/bottomnavibar.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<dynamic> nameList = ['공기린','산세베리아','스킨답서스','알로에','에케베리아','호접란'];
  List<dynamic> descripList = ['공기린은 주로 사해와 사막 지역에서 자라는 다육식물로, 거의 대부분이 섬유질이 많고 물을 저장하는 두꺼운 줄기를 가지고 있습니다. 공기린은 일반적으로 적은 물과 영양분으로도 생존할 수 있는 매우 강건한 식물로서 유명합니다.\n선인장은 다양한 형태와 크기를 가지고 있으며, 일부는 작고 다리가 짧은 것도 있고, 다른 것은 크고 높게 자라기도 합니다. 선인장의 잎은 대개 가시로 뒤덮여 있어서 동물의 침입으로부터 자신을 보호할 수 있습니다. 이러한 가시들은 물을 증발시키는 것을 방지하고, 동물이 선인장을 먹지 못하도록 합니다.',
  '산세베리아는 덩굴식물로 나무, 벽, 울타리 등을 타고 높이 올라갈 수 있다. 광택이 나는 녹색의 잎은 가을이 되면 빨간색, 적황색으로 단풍이 든다. 새, 사슴, 파충류가 열매를 먹거나, 피난처로 사용하기도 하며, 다양한 곤충들이 꽃을 먹는다. 덩굴옻나무는 독성을 가진 식물성 기름이 있어 피부에 닿으면 자극을 유발하므로, 만질 때는 보호복을 입고 만져야 한다. 태우면 연기로 인해 유독 물질을 흡입하게 되므로 태우지 않는 것이 좋다.',
  '스킨답서스(Epipremnum aureum)은 세계에서 가장 인기 있는 화초로, 대한민국에서는 국민 화초라고 불릴 정도로 많이 키웁니다. 키우기가 쉬워 입문자에게 좋습니다. 스킨답서스는 공기 정화 효과도 있지만 생명력과 번식력이 강해 야생에서는 생태계를 파괴하는 주범으로 여겨지기도 해, 일부 지역에서는 악마의 덩굴(Devils ivy)라고 이름까지 붙였다고 합니다. 또한 독성이 있으니 절대로 식용해서는 안 되는 식물입니다.',
  '알로에 베라(Aloe vera)의 베라는 라틴어로 진실을 뜻하며 예로부터 효능이 뛰어난 약으로 쓰였기에 이러한 이름이 붙었을 거라고 추정됩니다. 생명력이 좋고 병충해에 강하여 재배가 수월한 편이지만, 겨울에는 동해에 걸리지 않도록 주의하여야 합니다. 화장품 원료, 식용 등 다양한 용도로 활용되고 있습니다.',
  '에케베리아는 세계에서 가장 유독한 잡초 중 하나입니다. 소나 양과 같은 가축이 잎을 먹게 되면 중독되거나 죽을 수 있다고 합니다. 그렇기 때문에 전문가의 처방이 필요하며, 독성 때문에 의학적 사용이 제한적입니다. 동시에 란타나은 실크, 면 및 양모를 염색하는 천연염료의 원료로 사용될 수 있습니다. 게다가 유충을 방지할 수 있기 때문에 식물성 살충제로 개발되는 데 사용되기도 합니다.',
  '호접란은 한 그루의 나무에서 달마다 꽃이 피고 계절마다 꽃이 피기에 일반 장미와는 확연히 구분됩니다. 이러한 이유로 사계화(四季花)라고도 불리기도 한답니다. 강희안의 양화소록에 보면 이 호접란 에 대해 “보통 꽃은 한 해에 두 번 필 수가 없지만, 이 꽃만은 사시(四時)를 독차지하여 환하게 꽃을 피운다. 꽃을 피우려는 마음이 잠시도 쉰 적이 없다”라고 하였습니다.'];
  List<dynamic> imageList = ['assets/images/공기린.jpg', 'assets/images/산세베리아.jpg', 'assets/images/스킨답서스.jpg','assets/images/알로에.jpg','assets/images/에케베리아.jpg','assets/images/호접란.jpg'];

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
                                  makePlant(nameList[index], imageList[index]);
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
                                      image: AssetImage(imageList[index]),
                                      fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: 12,),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      nameList[index],
                                      //overflow: TextOverflow.clip,
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
                            Text(descripList[index]),
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
            Row(
              children: [
                Container(
                  width: 80,
                  height:80,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(plantImage)),
                    borderRadius: BorderRadius.circular(12)
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Center(
                    child: Text('$plantName', 
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Stylish'),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
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
                    child: Text('취소', style: TextStyle(color: AppColor.white, fontSize: 16),))),
                  SizedBox(width: 8,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNaviBar(1), // 1은 SecondPage를 나타냅니다.
                      ),
                      (route) => false, // 모든 페이지를 제거하고 SecondPage가 새로운 첫 번째 페이지로 됩니다.
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.primaryGreen,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                    child: Text('키우기', style: TextStyle(color: AppColor.white, fontSize: 16),)))
              ],
            )
          ],
        ),),
      );
    });
  }
}