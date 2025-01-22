import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'account_screen.dart';
import 'activity_screen.dart';
import 'home_screen.dart';
import 'langauge_data.dart';
import 'langauge_logic.dart';
import 'messages_screen.dart';
import 'payment_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;

    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _selectedIndex,
      children: [
        HomeScreen(),
        ActivityScreen(),
        PaymentScreen(),
        MessagesScreen(),
        AccountScreen()
      ],
    );
  }

  int _selectedIndex = 0;
  Widget _buildBottomNavBar() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      backgroundColor: islightMode ? Colors.white : Colors.black54,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: islightMode ? Colors.black54 : Colors.white,
      selectedLabelStyle: TextStyle(fontFamily: 'siem reab', fontSize: 14.0.r),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'siem reab',
        fontSize: 12.0,
      ),
      items: [
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('images/home_ngb.png'),
              size: 26.0,
            ),
            label: _language.home),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/activity_ngb.png'),
            size: 26.0,
          ),
          label: _language.activity,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/payment_ngb.png'),
            size: 26.0,
          ),
          label: _language.payment,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/messages_ngb.png'),
            size: 26.0,
          ),
          label: _language.messates,
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/account_ngb.png'),
            size: 26.0,
          ),
          label: _language.account,
        ),
      ],
    );
  }
}
