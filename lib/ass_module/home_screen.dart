import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grab_app/ass_module/challenges_screen.dart';
import 'package:grab_app/ass_module/express_screen.dart';
import 'package:grab_app/ass_module/rewards_screen.dart';
import 'package:provider/provider.dart';

import 'Hotel_screen.dart';
import 'food_screen.dart';
import 'gifts_screen.dart';
import 'image_list.dart';
import 'langauge_data.dart';
import 'langauge_logic.dart';
import 'rent_screen.dart';
import 'slideshow.dart';
import 'transport_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    print('Screen width: $screenWidth');
    print('Screen height: $screenHeight');

    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;

    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _build_stack(
            context,
          ),
          _BuildSlideShow(),
          _buildGridViewBuilderGrabThumbsUpLocalStars(),
          _buildGridViewBuilderSpecialDeals(),
          _buildGridViewBuilderMassiveSavings(),
          _buildGridViewBuilderKeepDiscovering()
        ],
      ),
    );
  }

  Widget _build_stack(
    BuildContext context,
  ) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildBodyOption(
          context,
        ),
        Positioned(
          top: -40.r,
          left: 25.r,
          right: 25.r,
          bottom: 125.r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: islightMode ? Colors.white : Colors.black54,
                  borderRadius: BorderRadius.circular(6.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: islightMode ? Colors.black12 : Colors.white10,
                      blurRadius: 6.0.r,
                      offset: Offset(0.r, 3.r),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                    top: 10.r, bottom: 10.r, left: 10.r, right: 10.r),
                child: Image.asset(
                  islightMode
                      ? 'images/scan.png'
                      : 'images/Screenshot 2025-01-02 160546.png',
                  width: 30.r,
                  height: 30.r,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Container(
                  width: 190.r,
                  height: 60.r,
                  margin: EdgeInsets.only(
                    left: 15.r,
                  ),
                  decoration: BoxDecoration(
                    color: islightMode ? Colors.white : Colors.black54,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.0.r),
                      bottomLeft: Radius.circular(6.0.r),
                    ),
                    border: Border(
                      right: BorderSide(
                        color: islightMode ? Colors.black12 : Colors.white10,
                        width: 0.5.r,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: islightMode ? Colors.black12 : Colors.white10,
                        blurRadius: 6.0.r,
                        offset: Offset(0.r, 3.r),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0.r),
                        child: Icon(Icons.search, color: Colors.grey),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: _language.search,
                            hintStyle: const TextStyle(
                              fontFamily: 'siem reab',
                              fontSize: 14.0,
                            ),
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(
                            fontFamily: 'siem reab',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 60.r,
                height: 60.r,
                decoration: BoxDecoration(
                  color: islightMode ? Colors.white : Colors.black54,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6.0.r),
                    bottomRight: Radius.circular(6.0.r),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: islightMode ? Colors.black12 : Colors.white10,
                      blurRadius: 6.0.r,
                      offset: Offset(0.r, 3.r),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12.0.r),
                child: Icon(
                  Icons.favorite_border,
                  color: islightMode ? Colors.grey : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBodyOption(BuildContext context) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Column(
      children: [
        Container(
          color: const Color(0xFF37C174),
          width: double.infinity,
          height: 70.r,
        ),
        Container(
            color: islightMode ? Colors.white : Colors.black12,
            width: double.infinity,
            height: 260.r,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 70.r,
                    right: 12.r,
                    left: 12.r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => TransportScreen(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60.r,
                              height: 60.r,
                              child: Image.asset("images/transport.png"),
                            ),
                            Text(_language.transpot,
                                style: TextStyle(
                                    fontSize: 15.sp, fontFamily: 'siem reab')),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            CupertinoPageRoute(
                              builder: (context) => FoodScreen(),
                            ),
                          );
                          // Navigator.push(
                          //     context,
                          //     CupertinoPageRoute(
                          //         builder: (context) => FoodScreen()));
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60.r,
                              height: 60.r,
                              child: Image.asset("images/Food.png"),
                            ),
                            Text(_language.food,
                                style: TextStyle(
                                    fontSize: 15.sp, fontFamily: 'siem reab')),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Express clicked");
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60.r,
                              height: 60.r,
                              child: Image.asset("images/gonow.png"),
                            ),
                            Text(_language.gonow,
                                style: TextStyle(
                                    fontSize: 15.sp, fontFamily: 'siem reab')),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          _showPersistentBottomSheet(context);
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              width: 60.r,
                              height: 60.r,
                              child: Image.asset("images/all.png"),
                            ),
                            Text(_language.all,
                                style: TextStyle(
                                    fontSize: 15.sp, fontFamily: 'siem reab')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 35.r,
                    left: 12.r,
                    right: 12.r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 185.r,
                        height: 70.r,
                        decoration: BoxDecoration(
                          color: islightMode ? Colors.white : Colors.black54,
                          borderRadius: BorderRadius.circular(12.0.r),
                          border: Border.all(
                            color: islightMode ? Colors.black26 : Colors.white,
                            width: 1.r,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10.r,
                            left: 10.r,
                            right: 10.r,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _language.payment,
                                style: TextStyle(
                                    color: islightMode
                                        ? Colors.black54
                                        : Colors.white,
                                    fontFamily: 'siem reab'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _language.add_a_acrd,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'siem reab'),
                                  ),
                                  SizedBox(
                                    width: 30.r,
                                    height: 30.r,
                                    child: Image.asset("images/card_icon.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 185.r,
                        height: 70.r,
                        decoration: BoxDecoration(
                          color: islightMode ? Colors.white : Colors.black54,
                          borderRadius: BorderRadius.circular(12.0.r),
                          border: Border.all(
                            color: islightMode ? Colors.black26 : Colors.white,
                            width: 1.r,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 10.r,
                            left: 10.r,
                            right: 10.r,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _language.points,
                                style: TextStyle(
                                    color: islightMode
                                        ? Colors.black54
                                        : Colors.white,
                                    fontFamily: 'siem reab'),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "0",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 30.r,
                                    height: 30.r,
                                    child: Image.asset("images/points.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }

  void _showPersistentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
      ),
      builder: (BuildContext context) {
        return _buildBottomSheetContent(context);
      },
    );
  }

  Widget _buildBottomSheetContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0.r),
      height: 410.r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _language.foryou,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'siem reab'),
          ),
          SizedBox(height: 16.r),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => ExpressScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Express.png"),
                    ),
                    Text(_language.express,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => TransportScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Remorque.png"),
                    ),
                    Text(_language.remorque,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => TransportScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Car.png"),
                    ),
                    Text(_language.car,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => RentScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Rent.png"),
                    ),
                    Text(_language.rent,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Text(
            _language.allservices,
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'siem reab'),
          ),
          SizedBox(height: 16.r),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => FoodScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Food.png"),
                    ),
                    Text(_language.food,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => TransportScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/transport.png"),
                    ),
                    Text(_language.transpot,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/gonow.png"),
                    ),
                    Text(_language.gonow,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => ChallengesScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Challenges.png"),
                    ),
                    Text(_language.challenges,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  print("images/Rewards.png");
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => Rewards(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Rewards.png"),
                    ),
                    Text(_language.rewards,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => GiftsScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Gifts.png"),
                    ),
                    Text(_language.gifts,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => HotelScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Hotels.png"),
                    ),
                    Text(_language.hotels,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) => TransportScreen(),
                    ),
                  );
                },
                child: Column(
                  children: [
                    SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset("images/Tuktuk.png"),
                    ),
                    Text(_language.tuktuk,
                        style: TextStyle(
                            fontSize: 15.sp, fontFamily: 'siem reab')),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.sp),
        ],
      ),
    );
  }

  Widget _BuildSlideShow() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Padding(
      padding: EdgeInsets.only(
        left: 6.r,
        right: 6.r,
      ),
      child: Container(
        width: double.infinity,
        height: 300.r,
        color: islightMode ? Colors.white : Colors.black12,
        child: MySlideshow(),
      ),
    );
  }

  Widget _buildGridViewBuilderGrabThumbsUpLocalStars() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: islightMode ? Colors.white : Colors.black12,
      child: Padding(
        padding: EdgeInsets.only(
          top: 0.r,
          bottom: 0.r,
          left: 14.r,
          right: 14.r,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "⭐Grab Thumbs Up Local Stars⭐",
              style: TextStyle(
                  fontSize: 20.sp, //==============================
                  color: islightMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            _buildGridViewGrabThumbsUpLocalStars(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewGrabThumbsUpLocalStars() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 10.r),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 6,
        crossAxisSpacing: 15, //=============================
        mainAxisSpacing: 0,
      ),
      itemCount: imageListGrid.length,
      itemBuilder: (context, index) {
        return _buildGridItemGrabThumbsUpLocalStars(
            imageListGrid[index]['image']!, imageListGrid[index]['text']!);
      },
    );
  }

  Widget _buildGridItemGrabThumbsUpLocalStars(String picture, String text) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 8.0.r), //=========================
            child: Text(
              text,
              style: TextStyle(
                color: islightMode ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp, //=====================================
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridViewBuilderSpecialDeals() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: islightMode ? Colors.white : Colors.black12,
      child: Padding(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 0,
          left: 14.r,
          right: 14.r,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "🎁Special Deals🎁",
              style: TextStyle(
                  fontSize: 20.r,
                  color: islightMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            _buildGridViewSpecialDeals(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewSpecialDeals() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 10.r),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 6,
        crossAxisSpacing: 15,
        mainAxisSpacing: 0,
      ),
      itemCount: imageListGridSpecialDeals.length,
      itemBuilder: (context, index) {
        return _buildGridItemSpecialDeals(
            imageListGridSpecialDeals[index]['image']!,
            imageListGridSpecialDeals[index]['text']!);
      },
    );
  }

  Widget _buildGridItemSpecialDeals(String picture, String text) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 8.0.r),
            child: Text(
              text,
              style: TextStyle(
                color: islightMode ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridViewBuilderMassiveSavings() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: islightMode ? Colors.white : Colors.black12,
      child: Padding(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 0,
          left: 14.r,
          right: 14.r,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "💲Massive savings💲",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: islightMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            _buildGridViewMassiveSavings(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewMassiveSavings() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 10.r),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 6,
        crossAxisSpacing: 15,
        mainAxisSpacing: 0,
      ),
      itemCount: imageListGridMassiveSavings.length,
      itemBuilder: (context, index) {
        return _buildGridItemMassiveSavings(
            imageListGridMassiveSavings[index]['image']!,
            imageListGridMassiveSavings[index]['text']!);
      },
    );
  }

  Widget _buildGridItemMassiveSavings(String picture, String text) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 8.0.r),
            child: Text(
              text,
              style: TextStyle(
                color: islightMode ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridViewBuilderKeepDiscovering() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: islightMode ? Colors.white : Colors.black12,
      child: Padding(
        padding: EdgeInsets.only(
          top: 0,
          bottom: 0,
          left: 14.r,
          right: 14.r,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Keep discovering",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: islightMode ? Colors.black : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            _buildGridViewKeepDiscovering(),
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewKeepDiscovering() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(top: 10.r),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4 / 6,
        crossAxisSpacing: 15,
        mainAxisSpacing: 0,
      ),
      itemCount: imageListGridkeepDiscovering.length,
      itemBuilder: (context, index) {
        return _buildGridItemKeepDiscovering(
            imageListGridMassiveSavings[index]['image']!,
            imageListGridMassiveSavings[index]['text']!);
      },
    );
  }

  Widget _buildGridItemKeepDiscovering(String picture, String text) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0.r),
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              )),
          Padding(
            padding: EdgeInsets.only(top: 8.0.r),
            child: Text(
              text,
              style: TextStyle(
                color: islightMode ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
