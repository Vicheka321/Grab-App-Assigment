import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'langauge_data.dart';

import 'langauge_logic.dart';

class Rewards extends StatelessWidget {
  // const Rewards({Key? key}) : super(key: key);
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
  _language = context.watch<LanguageLogic>().language;
  _langIndex = context.watch<LanguageLogic>().langIndex;
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 600, left: 10),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: isLightMode ? Colors.blueAccent : Colors.white,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: size.width,
                  height: 225,
                  color: isLightMode
                      ? const Color(0xFF0cb75b) // Green for light mode
                      : const Color(0xFF006400), // Dark green for dark mode
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 70, right: 20),
                          child: Image.asset(
                            'images/grab_removebg.png',
                            height: 65,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, top: 55, right: 20),
                        child: Container(
                          width: 159,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: isLightMode ? Colors.white : Colors.black45,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'images/qr_rewords.png',
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  _language.my_rewards,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: isLightMode
                                        ? Colors.green
                                        : Color(
                                            0xfff0bae55), // Fixed custom color syntax
                                    fontSize: 18,
                                    fontFamily: 'siem reab'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            PositionList(isLightMode: isLightMode),
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PositionList extends StatelessWidget {
   PositionList({
    super.key,
    required this.isLightMode,
  });
  Language _language = Khmer();
  int _langIndex = 0;
  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Positioned(
      top: 200,
      right: 0,
      left: 0,
      child: Container(
        width: 500,
        height: 900,
        decoration: BoxDecoration(
          color: isLightMode ? Colors.white : Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(
                'images/king_rewords.png',
                fit: BoxFit.cover,
                width: 30,
              ),
              title: Text(
                _language.my_membership_etials,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  fontFamily: 'siem reab',
                  color: isLightMode ? Colors.black : Colors.white,
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Divider(),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 30,
                            backgroundImage: AssetImage(
                              'images/all_rewords.png',
                            ),
                          ),
                          Text(_language.all,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                                    fontFamily: 'siem reab',
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/limited_rewords.png',
                            ),
                          ),
                          Text(
                            _language.limited_edition,
                            style: TextStyle(
                              color: isLightMode ? Colors.black : Colors.white,fontFamily: 'siem reab',
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/Grab_rewords.png',
                            ),
                          ),
                          Text('Grab',
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/Travel_rewords.png',
                            ),
                          ),
                          Text(_language.travel,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                                    fontFamily: 'siem reab',
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/service_rewords.png',
                            ),
                          ),
                          Text(_language.service,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                                    fontFamily: 'siem reab',
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/shoping_rewords.png',
                            ),
                          ),
                          Text(_language.shopping,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                                    fontFamily: 'siem reab',
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage(
                              'images/Dine_rewords.jpg',
                            ),
                          ),
                          Text(_language.dinner,
                              style: TextStyle(
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                                    fontFamily: 'siem reab',
                              ))
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage(
                              'images/Entertainment_rewords.png',
                            ),
                          ),
                          Text(_language.enterainment,
                              style: TextStyle(fontFamily: 'siem reab',
                                color:
                                    isLightMode ? Colors.black : Colors.white,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    'Grab',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: isLightMode ? Colors.black : Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 20),
                  child: Text(
                    _language.sell_all,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'siem reab',
                      color: isLightMode ? Colors.blue : Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 310,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/person_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR1,000 off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 13),
                                    RichText(
                                      text: TextSpan(
                                        text: '200 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                color: isLightMode
                                                    ? Colors.black
                                                    : Colors.white30,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/person_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR25,000 off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: '4,250 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                color: isLightMode
                                                    ? Colors.black
                                                    : Colors.white30,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/person_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR15,000 off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: '2,550 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                color: isLightMode
                                                    ? Colors.black
                                                    : Colors.white30,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/person_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR5,000 off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: '850 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                color: isLightMode
                                                    ? Colors.black
                                                    : Colors.white30,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/person_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR1,000 off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 10),
                                    RichText(
                                      text: TextSpan(
                                        text: '200 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_food_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR1,000 off GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '850 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_food_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR5,000 off GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '850 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_food_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR15,000 off GrabExpres delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '2,550 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_taxi.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR1,000 off GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'Transport Offers',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '200 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'points',
                                              style: TextStyle(
                                                color: isLightMode
                                                    ? Colors.black
                                                    : Colors.white24,
                                              )),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_food_image.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR25,000 off GrabExpres delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'GrabExpress',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '4,250 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'point',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 300,
                          height: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isLightMode ? Colors.white : Colors.black38,
                            border: Border.all(
                              color: isLightMode
                                  ? Colors.green
                                  : Colors.green[
                                      700]!, // Border color based on theme
                              width: 2.0, // Border width
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Shadow color// Softness of the shadow
                                spreadRadius: 0,
                                offset: Offset(2,
                                    2), // Size of the shadow// Position of the shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'images/rewords_taxi.jpg',
                                  width: double.infinity,
                                  height: 180,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'KHR5,000 off GrabExpress delivery',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: isLightMode
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 17),
                                    ),
                                    Text(
                                      'Transport Offers',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey,
                                          fontSize: 15),
                                    ),
                                    SizedBox(height: 35),
                                    RichText(
                                      text: TextSpan(
                                        text: '850 ',
                                        style: TextStyle(color: Colors.green),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: 'points',
                                              style: TextStyle(
                                                  color: isLightMode
                                                      ? Colors.black
                                                      : Colors.white24)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
