// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class HomeSlider extends StatefulWidget {
//   const HomeSlider({super.key});

//   @override
//   State<HomeSlider> createState() => _HomeSliderState();
// }

// class _HomeSliderState extends State<HomeSlider> {
//   int _currentIndex = 0;
//   final List<String> imgList = [
//     'https://via.placeholder.com/600x300.png?text=Slide+1',
//     'https://via.placeholder.com/600x300.png?text=Slide+2',
//     'https://via.placeholder.com/600x300.png?text=Slide+3',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: [
//         CarouselSlider(
//           items: imgList
//               .map((item) => Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.amber,
//                         image: DecorationImage(
//                             image: NetworkImage(
//                               item,
//                             ),
//                             fit: BoxFit.fill)),
//                   ))
//               .toList(),
//           options: CarouselOptions(
//             viewportFraction: 0.9,
//             autoPlay: true,
//             enlargeCenterPage: true,
//             aspectRatio: 3.0,
//             onPageChanged: (index, reason) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//         Positioned(
//           bottom: 10.0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: imgList.map((url) {
//               int index = imgList.indexOf(url);
//               return Container(
//                 width: 8.0,
//                 height: 8.0,
//                 margin:
//                     const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   color: _currentIndex == index
//                       ? Colors.white
//                       : Colors.grey,
//                 ),
//               );
//             }).toList(),
//           ),
//         ),
//       ],
//     );
//   }
// }
