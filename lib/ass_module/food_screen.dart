import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'food_detail_screen.dart';
import 'image_list.dart';
import 'langauge_data.dart';
import 'langauge_logic.dart';

class FoodScreen extends StatefulWidget {
  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  bool isDeliverySelected = true;
  final TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = imageListfoodvertical;
    searchController.addListener(_filterList);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterList() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredItems = imageListfoodvertical
          .where((item) =>
              item['text'].toLowerCase().contains(query) ||
              item['rateandtype'].toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshContent,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              buildStack(),
              isDeliverySelected
                  ? buildDeliveryContent()
                  : buildSelfPickupContent(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _refreshContent() async {
    await Future.delayed(const Duration(milliseconds: 100));
    setState(() {});
  }

  Widget buildStack() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        buildGradientHeader(context),
        Positioned(
          top: 120.r,
          left: 25.r,
          right: 25.r,
          child: Container(
            height: 60.r,
            padding: EdgeInsets.symmetric(horizontal: 16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2.r),
                  blurRadius: 10.0.r,
                  spreadRadius: 1.0.r,
                  offset: Offset(4.0, 4.0.r),
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                SizedBox(width: 10.r),
                Expanded(
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'siem reab',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildGradientHeader(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 150.r,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6ACD9F),
                Color(0xFF58D4F8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.r, vertical: 8.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.r),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    SizedBox(width: 8.r),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _language.DELIVER_TO,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'siem reab'
                            ),
                          ),
                          Text(
                            "Near N93A St 163 Toul Tom Poung...",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.r),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30.r,
                    ),
                    SizedBox(width: 8.r),
                    Icon(
                      Icons.note_add_rounded,
                      color: Colors.white,
                      size: 30.r,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          // color: Color(0xFFfef7ff),
          width: double.infinity,
          child: buildDeliveryOptions(),
        )
      ],
    );
  }

  Widget buildDeliveryOptions() {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Padding(
      padding:
          EdgeInsets.only(top: 40.r, left: 25.r, right: 25.r, bottom: 25.r),
      child: Row(
        children: [
          // Delivery Button
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    isDeliverySelected ? Color(0xFF17443f) : Color(0xFFeef9fb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  side: BorderSide(
                    color:
                        isDeliverySelected ? Colors.transparent : Colors.grey,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.delivery_dining,
                    color: isDeliverySelected ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 8.r),
                  Text(
                    _language.delivery,
                    style: TextStyle(fontFamily: 'siem reab',fontSize: 12,
                      color: isDeliverySelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.r),

          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    !isDeliverySelected ? Color(0xFF17443f) : Color(0xFFeef9fb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  side: BorderSide(
                    color:
                        !isDeliverySelected ? Colors.transparent : Colors.grey,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = false;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: !isDeliverySelected ? Colors.white : Colors.black,
                  ),
                  SizedBox(width: 8.r),
                  Text(
                    _language.self_Pick_Up,
                    style: TextStyle(fontFamily: 'siem reab',fontSize: 12,
                      color: !isDeliverySelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDeliveryContent() {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 0, left: 25.r, right: 25.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  _language.fast_delivery,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,fontFamily: 'siem reab',),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
            SizedBox(height: 18.r),
            buildListViewhorizontal(),
            SizedBox(height: 16.r),
            Text(
              _language.popular_restaurants,
              style: TextStyle(fontSize: 18.r, fontWeight: FontWeight.bold,fontFamily: 'siem reab',),
            ),
            buildListViewvertical()
          ],
        ),
      ),
    );
  }

  Widget buildListViewhorizontal() {
    List<int> shuffledIndices = [];
    void _shuffleIndiceshorizontal() {
      shuffledIndices = List.generate(filteredItems.length, (index) => index);
      shuffledIndices.shuffle();
    }

    if (shuffledIndices.isEmpty) {
      _shuffleIndiceshorizontal();
    }
    int itemCount = filteredItems.isNotEmpty
        ? (filteredItems.length > 5 ? 5 : filteredItems.length)
        : 0;

    return SizedBox(
      height: 230.r,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        itemBuilder: (context, index) {
          int uniqueIndex = shuffledIndices[index];
          return _buildlistfoodhorizontal(
            filteredItems[uniqueIndex]['image']!,
            filteredItems[uniqueIndex]['text']!,
            filteredItems[uniqueIndex]['rateandtype']!,
            filteredItems[uniqueIndex]['delivery']!,
            filteredItems[uniqueIndex]['distance']!,
            List<Map<String, String>>.from(
                filteredItems[uniqueIndex]['relatedImages']),
          );
        },
      ),
    );
  }

  Widget _buildlistfoodhorizontal(
    String picture,
    String text,
    String rateandtype,
    String delivery,
    String distance,
    List<Map<String, String>> relatedImages,
  ) {
    bool isLightMode = Theme.of(context).brightness == Brightness.light;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              picture: picture,
              text: text,
              rateandtype: rateandtype,
              delivery: delivery,
              distance: distance,
              relatedImages: relatedImages,
            ),
          ),
        );
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.only(left: 0, right: 12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0.r),
              child: Container(
                height: 140.r,
                width: 140.r,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5.r),
                      spreadRadius: 2.r,
                      blurRadius: 6.r,
                      offset: Offset(0, 3.r),
                    ),
                  ],
                ),
                child: Image.asset(
                  picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.r),
            Text(
              text,
              style: TextStyle(
                color: isLightMode ? Colors.black : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
                fontFamily: 'siem reab',
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8.r),
            Text(distance),
          ],
        ),
      ),
    );
  }

  Widget buildListViewvertical() {
    List<int> shuffledIndicesvertical = [];
    void _shuffleIndiceshorizontal() {
      shuffledIndicesvertical =
          List.generate(imageListfoodvertical.length, (index) => index);
      shuffledIndicesvertical.shuffle();
    }

    if (shuffledIndicesvertical.isEmpty) {
      _shuffleIndiceshorizontal();
    }
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: imageListfoodvertical.length,
      itemBuilder: (context, index) {
        int uniqueIndex = shuffledIndicesvertical[index];
        return _buildlistfoodvertical(
          imageListfoodvertical[uniqueIndex]['image']!,
          imageListfoodvertical[uniqueIndex]['text']!,
          imageListfoodvertical[uniqueIndex]['rateandtype']!,
          imageListfoodvertical[uniqueIndex]['delivery']!,
          imageListfoodvertical[uniqueIndex]['distance']!,
          List<Map<String, String>>.from(
              imageListfoodvertical[uniqueIndex]['relatedImages']),
        );
      },
    );
  }

  Widget _buildlistfoodvertical(
    String picture,
    String text,
    String rateandtype,
    String delivery,
    String distance,
    List<Map<String, String>> relatedImages,
  ) {
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                picture: picture,
                text: text,
                rateandtype: rateandtype,
                delivery: delivery,
                distance: distance,
                relatedImages: relatedImages,
              ),
            ),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 0, right: 0, bottom: 20.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  height: 110.r,
                  width: 110.r,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5.r),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    picture,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 20.r),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: isLightMode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        fontFamily: 'siem reab',
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.r),
                    Text(
                      rateandtype,
                      style: TextStyle(
                        color: isLightMode ? Colors.black : Colors.white,
                        fontSize: 14.sp,
                        fontFamily: 'siem reab',
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.r),
                    Row(
                      children: [
                        Text(
                          delivery,
                          style: TextStyle(
                            color: isLightMode ? Colors.green : Colors.green,
                            fontSize: 14.sp,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 12.r),
                        Expanded(
                          child: Text(
                            distance,
                            style: TextStyle(
                              color: isLightMode ? Colors.black : Colors.white,
                              fontSize: 14.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildSelfPickupContent() {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Self Pick Up Locations",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.r),
            Text("Self Pick Up content goes here..."),
          ],
        ),
      ),
    );
  }
}
