import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class DetailScreen extends StatefulWidget {
  final String picture;
  final String text;
  final String distance;
  final String rateandtype;
  final String delivery;
  final List<Map<String, String>> relatedImages;

  DetailScreen({
    required this.picture,
    required this.text,
    required this.distance,
    required this.rateandtype,
    required this.delivery,
    required this.relatedImages,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(context));
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_buildStack(), _buidlgridview()],
      ),
    );
  }

  Widget _buildStack() {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildbackgroud(),
        Positioned(
          top: 50.r,
          left: 25.r,
          right: 25.r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 50.r,
                height: 50.r,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 25.r,
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 50.r,
                height: 50.r,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 25.r,
                  ),
                ),
              ),
              SizedBox(
                width: 12.r,
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                    width: 130.r,
                    height: 50.r,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(24.0.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.white,
                        ),
                        Text(
                          _language.delivery,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'siem reab'
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Positioned(
          top: 120.r,
          left: 25.r,
          right: 25.r,
          child: Container(
            height: 150.r,
            decoration: BoxDecoration(
              // color: Colors.white,
              color: isLightMode ? Colors.white : Colors.black38,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.white10,
                  blurRadius: 10.0.r,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0.r),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0.r),
                    child: Container(
                      height: 110.r,
                      width: 110.r,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0.r),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        widget.picture,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.r, left: 0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontFamily: 'siem reab',
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8.r),
                        Text(
                          widget.rateandtype,
                          style: TextStyle(
                            color: isLightMode ? Colors.black : Colors.white,
                            fontSize: 14.sp,
                            fontFamily: 'siem reab',
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 8.r),
                        Row(
                          children: [
                            Text(
                              widget.delivery,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.green : Colors.green,
                                fontSize: 14.sp,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(width: 12.r),
                            Expanded(
                              child: Text(
                                widget.distance,
                                style: TextStyle(
                                  color:
                                      isLightMode ? Colors.black : Colors.white,
                                  fontSize: 14.sp,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
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
        )
      ],
    );
  }

  Widget _buildbackgroud() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 180.r,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.picture),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black54,
                BlendMode.color,
              ),
            ),
            // borderRadius: BorderRadius.circular(10),
          ),
        ),
        Container(
          height: 100.r,
          width: double.infinity,
        )
      ],
    );
  }

  Widget _buidlgridview() {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(25.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _language.for_you,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 10.r),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 4 / 6,
                crossAxisSpacing: 15,
                mainAxisSpacing: 0,
              ),
              itemCount: widget.relatedImages.length,
              itemBuilder: (context, index) {
                String image = widget.relatedImages[index]['image']!;
                String name = widget.relatedImages[index]['name']!;
                String price = widget.relatedImages[index]['price']!;

                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16.0.r),
                          child: Image.asset(
                            image,
                            width: 170.r,
                            height: 170.r,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            top: 130.r,
                            left: 130.r,
                            right: 10.r,
                            bottom: 10.r,
                            child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 14.sp,
                                  ),
                                  onPressed: () {},
                                )))
                      ]),
                      SizedBox(height: 12.r),
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'siem reab',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 12.r),
                      Text(
                        price,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'siem reab',
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
