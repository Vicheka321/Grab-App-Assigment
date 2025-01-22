import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class PaymentScreen extends StatelessWidget {
   PaymentScreen({super.key});
  Language _language = Khmer();
  int _langIndex = 0;

  final String cover =
      'https://img.freepik.com/premium-photo/abstract-16-light-background-wallpaper-colorful-gradient-blurry-soft-smooth-motion-bright-shine_792836-53865.jpg';

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Scaffold(
      // backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackList(cover: cover),
            Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Text(
                _language.recent_transaction,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'siem reab',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                    'images/activity_image.png',
                    fit: BoxFit.cover,
                    width: 250,
                    height: 120,
                  ),
                  SizedBox(height: 20),
                  Text(
                    _language.There_is_no,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'siem reab'
                      // color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      _language.see_past_transactions,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18,
                        fontFamily: 'siem reab'
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StackList extends StatelessWidget {
   StackList({
    super.key,
    required this.cover,
    
  });
  Language _language = Khmer();
  int _langIndex = 0;

  final String cover;

  @override
  Widget build(BuildContext context) {

  _language = context.watch<LanguageLogic>().language;
  _langIndex = context.watch<LanguageLogic>().langIndex;
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Image.network(
            cover,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            top: 200,
            right: 20,
            left: 20,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Add card action
                    },
                    icon: Icon(
                      Icons.card_giftcard,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10), // Space between icon and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _language.add_card,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'siem reab'
                        ),
                      ),
                      Text(
                        _language.go_cashless,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'siem reab'
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Title and subtitle in a column
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _language.payment,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'siem reab',
                      ),
                    ),
                    SizedBox(height: 5), // Space between title and subtitle
                    Text(
                      _language.simple_flexible,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'siem reab',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: IconButton(
                    onPressed: () {
                      // print('Successfully pressed settings');
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SettingScreen()),
                      // );
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
