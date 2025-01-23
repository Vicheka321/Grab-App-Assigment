import 'dart:async';
import 'package:flutter/material.dart';
import 'about_us_screen.dart';
import 'image_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySlideshow extends StatefulWidget {
  const MySlideshow({super.key});

  @override
  _MySlideshowState createState() => _MySlideshowState();
}

class _MySlideshowState extends State<MySlideshow> {
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildStorySlideshow() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return GestureDetector(
      onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AboutUsScreen()),
      );
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 12.r,
          left: 12.r,
          right: 12.r,
        ),
        height: 300.r,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 1000,
          itemBuilder: (context, index) {
            final imageData = imageList[index % imageList.length];
            return Container(
              height: 190.r,
              margin: EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(imageData['text']!,
                      style: TextStyle(
                          fontSize: 25.sp,
                          color: islightMode ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0.r),
                    child: Image.asset(
                      imageData['image']!,
                      fit: BoxFit.cover,
                      height: 180.r,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 8.r),
                  Text(imageData['description']!,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: islightMode ? Colors.black : Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildStorySlideshow();
  }
}
