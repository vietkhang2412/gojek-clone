import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gojek_clone/core/values/dimens.dart';

class CarouselWithDot extends StatefulWidget {
  List<String> imgList;

  CarouselWithDot({super.key, required this.imgList});

  @override
  State<CarouselWithDot> createState() => _CarouselWithDotState();
}

class _CarouselWithDotState extends State<CarouselWithDot> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map(
          (item) => Container(
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Image.asset(
                item,
                width: 300,
                height: 150,
              ),
            ),
          ),
        )
        .toList();

    return Column(
      children: [
        const SizedBox(
          height: AppDimens.SIZE_128,
        ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              enlargeFactor: 0.3,
              viewportFraction: 1.0,
              autoPlay: false,
              enlargeCenterPage: true,
              aspectRatio: 5 / 4,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 10,
              height: 10,
              margin: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Colors.green[700]
                    : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
