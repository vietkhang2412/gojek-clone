import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gojek_clone/core/values/colors.dart';
import 'package:gojek_clone/core/values/dimens.dart';
import 'package:gojek_clone/core/values/images.dart';
import 'package:gojek_clone/modules/login/widgets/CarouselWithDot.dart';

class BeforeLogin extends StatefulWidget {
  const BeforeLogin({super.key});

  @override
  State<BeforeLogin> createState() => _BeforeLoginState();
}

class _BeforeLoginState extends State<BeforeLogin> {
  final List<String> imgSliderList = [
    AppImage.slider3,
    AppImage.slider2,
    AppImage.slider1,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.SIZE_10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImage.logo2,
                  width: AppDimens.SIZE_150,
                  height: AppDimens.SIZE_80,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: AppDimens.SIZE_0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    onPressed: () {},
                    child: const Text.rich(
                        TextSpan(style: TextStyle(fontSize: 13), children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.language,
                        size: AppDimens.SIZE_16,
                        color: Colors.grey,
                      )),
                      TextSpan(text: " "),
                      TextSpan(
                          text: "Tiếng việt",
                          style:
                              TextStyle(color: AppColors.gray2, fontSize: 15))
                    ]))),
              ],
            ),
            CarouselWithDot(
              imgList: imgSliderList,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side:
                              BorderSide(width: 2, color: Colors.green[700]!))),
                  onPressed: () {},
                  child: Text(
                    "Bạn là người mới? Đăng kí ngay",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.green[700],
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text:
                      "Bằng việc đăng ký hoặc đăng nhập, bạn đã đồng ý với các",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: "Điều khoản dịch vụ",
                  style: TextStyle(fontSize: 15, color: AppColors.green2),
                ),
                TextSpan(text: " "),
                TextSpan(
                    text: "và",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
                TextSpan(text: " "),
                TextSpan(
                  text: "Chính sách bảo mật",
                  style: TextStyle(fontSize: 15, color: AppColors.green2),
                ),
              ])),
            )
          ],
        ),
      )),
    );
  }
}
