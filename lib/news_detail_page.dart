import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_purpose/size_config.dart';
import 'package:education_purpose/app_styles.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: kLighterWhite,
      body: Column(
        children: [
          Stack(
            children: [
              FullScreenSlider(),
            ],
          ),
        ],
      ),
    );
  }
}

final List<String> imgList = [
  'assets/detail1.png',
  'assets/article_img1.png',
  'assets/article_img2.png',
  'assets/article_img3.png',
  'assets/article_img.png',
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: imgList
              .map(
                (item) => Center(
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover,
                    height: SizeConfig.blockSizeVertical! * 50,
                    width: double.infinity,
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map(
                (entry) {
                  return GestureDetector(
                    onTap: () => _controller.animateToPage(entry.key),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: Image.asset(
                        _current == entry.key
                            ? 'assets/Carousel_indicator_enabled.png'
                            : 'assets/Carousel_indicator_disabled.png',
                        height: 10,
                        width: 10,
                      ),
                    ),
                  );
                },
              ).toList(), 
            ),
          ),
        ),
      ],
    );
  }
}


