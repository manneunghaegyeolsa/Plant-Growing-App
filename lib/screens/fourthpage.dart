import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:solvers/designs/color.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  final ImagePicker picker = ImagePicker();
  XFile? _image;
  bool isAble =  false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryGreen,
        title: Text("식물 병원",
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
            SizedBox(height: 16,),
          Container(
            width: 300,
            height: 300,
            decoration: _image != null
                              ? BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  image: FileImage(File(_image!.path)),
                                  fit: BoxFit.cover,
                                ),
                              )
                              : BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: AppColor.gray
                              ),
            child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    takeFromCamera();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.white,
                            border: Border.all(
                              color: AppColor.white,
                              width: 1,
                            ),
                          ),
                          child: Icon(Icons.camera_alt)),
                    ),
                  ),
                ),
          ),
          SizedBox(height: 16,),
          GestureDetector(
            onTap: () {
              setState(() {
                isAble = true;
              });
            },
            child: Container(
              width: 300,
              height: 32,
              child: Center(
                child: Text("검색하기",
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
          Visibility(
            visible: isAble,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.gray),
                borderRadius: BorderRadius.circular(16)
              ),
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '잎말림은 주로 바이러스에 의해 발생하며, 식물의 잎이 마르고 죽는 증상을 보입니다. 예방을 위해 정기적인 검역과 바이러스 저항력이 높은 품종의 선택이 필요하며, 감염된 식물은 격리하여 전염을 막아야 합니다.')
                ],
              ),
            ),
          )
        ],
        ),
      ),
    );
  }
  void takeFromCamera() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        _image = image;
      });
    } else {
      // 이미지 선택이 취소되었을 때의 처리
      print('Image selection cancelled');
    }
  }
  void takeFromGallery() async {
    final XFile? image  = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        print("리스트에 이미지 저장");
        _image = image;

      });
    }
  }
}