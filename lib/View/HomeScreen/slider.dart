import 'package:afosh_club/Utils/resources/res/app_theme.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int _currentIndex = 0;
  final List<String> imgList = [
   "assets/images/slider.png",
   "assets/images/slider.png",
   "assets/images/slider.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20.0),
  child: SizedBox(
    height: 150,
    child: CarouselView(
      itemExtent: ScreenSize(context).width,
      children: List<Widget>.generate(3, (int index) {
        return   Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage(
                          imgList[index],
                        ),
                        fit: BoxFit.fill)),
              );
      }),
    ),
  ),
),
        // CarouselSlider(
        //   items: imgList
        //       .map((item) => Container(
        //             decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(20),
        //                 color: Colors.amber,
        //                 image: DecorationImage(
        //                     image: NetworkImage(
        //                       item,
        //                     ),
        //                     fit: BoxFit.fill)),
        //           ))
        //       .toList(),
        //   options: CarouselOptions(
        //     viewportFraction: 0.9,
        //     autoPlay: true,
        //     enlargeCenterPage: true,
        //     aspectRatio: 3.0,
        //     onPageChanged: (index, reason) {
        //       setState(() {
        //         _currentIndex = index;
        //       });
        //     },
        //   ),
        // ),
       
        Positioned(
          bottom: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.map((url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? Colors.white
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
