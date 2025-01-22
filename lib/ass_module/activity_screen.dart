import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class ActivityScreen extends StatelessWidget {
  ActivityScreen({super.key});
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      backgroundColor: islightMode ? Colors.white : Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            _language.activity,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: islightMode ? Colors.black : Colors.white,
                fontSize: 23,
                fontFamily: 'siem reab'),
          ),
        ),
        backgroundColor: islightMode ? Colors.white : Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: islightMode ? Color(0xFFcaf0f8) : Colors.black,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: islightMode ? Colors.black : Colors.green,
                    width: 0.5,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),

                // elevation: 3,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.history,
                    color: islightMode ? Colors.black : Colors.white,
                  ),
                  SizedBox(width: 9),
                  Text(
                    _language.history,
                    style: TextStyle(
                        color: islightMode ? Colors.black : Colors.white,
                        fontSize: 15,
                        fontFamily: 'siem reab'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 250),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'images/activity_image.png',
                  width: 500,
                  height: 150,
                ),
                const SizedBox(height: 10),
                Text(
                  _language.nothing_happening_now,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'siem reab',
                    color: islightMode ? Colors.black : Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  _language.when_you,
                  style: TextStyle(
                      color: islightMode ? Colors.black : Colors.white,
                      fontFamily: 'siem reab'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
