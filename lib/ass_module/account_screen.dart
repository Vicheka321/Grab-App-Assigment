import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'langauge_data.dart';
import 'langauge_logic.dart';
import 'theme_logic.dart';

class AccountScreen extends StatefulWidget {
  // const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    ThemeMode mode = context.watch<ThemeLogic>().mode;
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;

    return Scaffold(
      body: main(),
    );
  }

  Widget main() {
    return SingleChildScrollView(
      child: Column(
        children: [_BuildBody(), _buidlListSetting()],
      ),
    );
  }

  Widget _BuildBody() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Column(
          children: [
            Container(
              color: islightMode ? Color(0xFFEEFafa) : Colors.black12,
              // color : Color(0xFFEEFafa),
              width: double.infinity,
              height: 150.r,
            ),
            Container(
              color: islightMode ? Color(0xFFfbfbfb) : Colors.black12,
              width: double.infinity,
              height: 130.r,
            ),
            Container(
              color: islightMode ? Color(0xFFf5f5f5) : Colors.black12,
              width: double.infinity,
              height: 100.r,
            ),
          ],
        ),
        Positioned(
          top: 40.r,
          left: 0.r,
          right: 0.r,
          child: Container(
            height: 70.r,
            color: islightMode ? Color(0xFFEEFafa) : Colors.black26,
            child: Padding(
              padding: EdgeInsets.all(18.0.r),
              child: Row(
                children: [
                  Text("Hi,Vicheka",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.bold)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  Spacer(),
                  Container(
                    height: 40.r,
                    width: 40.r,
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundImage: AssetImage('images/person_message.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 110.r,
          left: 16.r,
          right: 16.r,
          child: Container(
            height: 70.r,
            decoration: BoxDecoration(
              color: islightMode ? Colors.white : Colors.blue,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5.r),
                  spreadRadius: 1.r,
                  blurRadius: 5.r,
                  offset: Offset(0.r, 3.r),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.r),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 30.sp,
                  ),
                  Text(_language.start_giving_reviews,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'siem reab')),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16.sp),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 195.r,
          left: 16.r,
          right: 16.r,
          child: Container(
            height: 70.r,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: AssetImage("images/grabunlimited.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5.r),
                  spreadRadius: 1.r,
                  blurRadius: 5.r,
                  offset: Offset(0, 3.r),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 295.r,
          left: 16.r,
          right: 16.r,
          child: Container(
            height: 70.r,
            decoration: BoxDecoration(
              color: islightMode ? Colors.white : Colors.green,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5.r),
                  spreadRadius: 1.r,
                  blurRadius: 5.r,
                  offset: Offset(0.r, 3.r),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_language.business_center,
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'siem reab')),
                  Icon(
                    Icons.badge,
                    color: Colors.amber,
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buidlListSetting() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: islightMode ? Colors.white : Colors.black12,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _language.for_more_value,
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            SizedBox(height: 10.r),
            ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.cabin, color: Colors.green),
                  SizedBox(width: 8.r),
                  const Text(
                    '0 points',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              title: Text(_language.member,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(
                _language.subscriptions,
                style: TextStyle(fontFamily: 'siem reab'),
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.challenges,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            SizedBox(height: 20.r),
            Text(
              _language.general,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            SizedBox(height: 10.r),
            ListTile(
              title: Text(_language.favourites,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.payment_methods,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.setting,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.safety_setting,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.langauge,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {
                _showPersistentBottomSheetChangeLangauge(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text(_language.theme_mode,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {
                _showPersistentBottomSheetThemeColor(context);
              },
            ),
            Divider(),
            ListTile(
              title: Text(_language.saved_places,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            SizedBox(height: 20.r),
            Text(
              _language.support,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            SizedBox(height: 10.r),
            ListTile(
              title: Text(_language.help_centre,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.share_feedback,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            SizedBox(height: 20.r),
            Text(
              _language.opportunities,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'siem reab'),
            ),
            SizedBox(height: 10.r),
            ListTile(
              title: Text(_language.map_your_city,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.support_the_environment,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text(_language.drive_with_grab,
                  style: TextStyle(fontFamily: 'siem reab')),
              trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
    );
  }

  void _showPersistentBottomSheetThemeColor(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
      ),
      builder: (BuildContext context) {
        return _buildBottomSheetThemeColor(context);
      },
    );
  }

  Widget _buildBottomSheetThemeColor(BuildContext context) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;

    return Container(
      height: 230.r,
      width: double.infinity,
      padding: EdgeInsets.all(16.0.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Theme Color",
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.r),
          InkWell(
            onTap: () {
              context.read<ThemeLogic>().changeToLight();
              Navigator.pop(context);
            },
            child: Container(
              width: 400.r,
              height: 60.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                border: Border.all(
                  width: 1.r,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0.r),
                child: Row(
                  children: [
                    Icon(Icons.light_mode),
                    SizedBox(
                      width: 30.r,
                    ),
                    Text("Light mode", style: TextStyle(fontSize: 15.r)),
                    Spacer(),
                    if (islightMode)
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 25.sp,
                      ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 16.r),
          InkWell(
            onTap: () {
              // Get.changeTheme(
              //     Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              context.read<ThemeLogic>().changeToDark();
              Navigator.pop(context);
            },
            child: Container(
              width: 400.r,
              height: 60.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0.r),
                border: Border.all(
                  width: 1.r,
                  style: BorderStyle.solid,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(12.0.r),
                child: Row(
                  children: [
                    Icon(Icons.dark_mode),
                    SizedBox(
                      width: 30.r,
                    ),
                    Text("Dark mode", style: TextStyle(fontSize: 15.sp)),
                    Spacer(),
                    if (!islightMode)
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 25.sp,
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showPersistentBottomSheetChangeLangauge(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
      ),
      builder: (BuildContext context) {
        return _buildBottomSheetChangeLangauge(context);
      },
    );
  }

  Widget _buildBottomSheetChangeLangauge(BuildContext context) {
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Container(
      width: double.infinity,
      height: 700.r,
      child: ListView(
        children: [
          SizedBox(height: 10.r),
          ListTile(
            leading: Image.asset(
              'images/khmernf.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Khmer"),
            onTap: () {
              context.read<LanguageLogic>().changeToKhmer();
              Navigator.pop(context);
            },
            trailing: _langIndex == 0
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'images/englishnf.jpg',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("English"),
            onTap: () {
              context.read<LanguageLogic>().changeToEnglish();
              Navigator.pop(context);
            },
            trailing: _langIndex == 1
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'images/chinesenf.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Chinese"),
            onTap: () {
              context.read<LanguageLogic>().changeToChinese();
              Navigator.pop(context);
            },
            trailing: _langIndex == 2
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'images/flag_of_thailand.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Thailand"),
            onTap: () {
              context.read<LanguageLogic>().changeToThailand();
              Navigator.pop(context);
            },
            trailing: _langIndex == 3
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'images/Flag_of_France.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("France"),
            onTap: () {
              context.read<LanguageLogic>().changeToFrance();
              Navigator.pop(context);
            },
            trailing: _langIndex == 4
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset(
              'images/Flag_of_Indonesia.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Indonesia"),
            onTap: () {
              context.read<LanguageLogic>().changeToIndonesia();
              Navigator.pop(context);
            },
            trailing: _langIndex == 5
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          ListTile(
            leading: Image.asset(
              'images/Flag_of_South_Korea.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Korean"),
            onTap: () {
              context.read<LanguageLogic>().changeToKorean();
              Navigator.pop(context);
            },
            trailing: _langIndex == 6
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          ListTile(
            leading: Image.asset(
              'images/Flag_of_Malaysia.svg.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Malay"),
            onTap: () {
              context.read<LanguageLogic>().changeToMalay();
              Navigator.pop(context);
            },
            trailing: _langIndex == 7
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          ListTile(
            leading: Image.asset(
              'images/Flag_of_Japan.svg.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Japanese"),
            onTap: () {
              context.read<LanguageLogic>().changeToJapan();
              Navigator.pop(context);
            },
            trailing: _langIndex == 8
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
          ListTile(
            leading: Image.asset(
              'images/flag_of_vietnam.png',
              width: 30.r,
              height: 30.r,
            ),
            title: Text("Vietnamese"),
            onTap: () {
              context.read<LanguageLogic>().changeToJVietnamese();
              Navigator.pop(context);
            },
            trailing: _langIndex == 9
                ? Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 25.sp,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
