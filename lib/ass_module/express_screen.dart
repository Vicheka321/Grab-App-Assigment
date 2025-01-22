import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class ExpressScreen extends StatelessWidget {
  const ExpressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: StackList(),
      ),
    );
  }
}

class StackList extends StatelessWidget {
   StackList({
    super.key,
  });
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: Color(0xFF017550),
              width: double.infinity,
              height: 240,
              child: Padding(
                padding: const EdgeInsets.only(top: 120, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.welcome_to_Express,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'siem reab',
                              fontSize: 18),
                        ),
                        Text(
                          _language.get_your_item_delivered,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'siem reab',
                              fontSize: 11),
                        ),
                        Text(
                          _language.whenever_wherever,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'siem reab',
                              fontSize: 11),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6, bottom: 25),
                      child: Image.asset(
                        'images/Express_1.png',
                        width: 160,
                        height: 80,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Positioned container
        PositionedList(),
        Positioned(
          top: 70,
          left: 300,
          right: 16,
          child: Row(
            children: const [
              // Example: Replace with real widgets
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.bookmark, color: Colors.green),
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.receipt, color: Colors.green),
                backgroundColor: Colors.white,
              ),
            ],
          ),
        ),
        ListViewList(),
        Padding(
          padding: const EdgeInsets.only(top: 450, left: 30),
          child: Text(
            _language.sell_with,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'siem reab',
              color: isLightMode ? Colors.black : Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 480, left: 30),
          child: Text(
            _language.a_simpler_way,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'siem reab',
              color: isLightMode ? Colors.grey : Colors.grey,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 535, left: 25),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfffecf9ff),
                ),
                width: 170,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 5),
                      child: Text(
                        _language.build_catalogue,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'siem reab',
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Image.asset(
                        'images/book_image.jpg',
                        width: 46,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffffff9bf)),
                width: 170,
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 15),
                      child: Text(
                        _language.quick_guide,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'siem reab',
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Image.asset(
                        'images/star_image.jpg',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 630, left: 25),
          child: Text(
            _language.you_may_like,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'siem reab',
                color: isLightMode ? Colors.black : Colors.white,
                fontSize: 18),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 700, left: 100),
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(
                      'images/profile.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Boss Clud',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'siem reab',
                        color: isLightMode ? Colors.black : Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 700, left: 100),
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(
                      'images/message_image.jpg',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Boss Clud',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'siem reab',
                        color: isLightMode ? Colors.black : Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 70, left: 10),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}

class ListViewList extends StatelessWidget {
   ListViewList({
    super.key,
  });
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Padding(
      padding: const EdgeInsets.only(top: 350, left: 20),
      child: Container(
        height: 70,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)),
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.deliver_to,
                          style: TextStyle(fontFamily: 'siem reab',color: Colors.grey, fontSize: 13),
                        ),
                        Text('Phnom Penh',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'siem reab',
                                fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Image.asset(
                        'images/location_imagess.png',
                        width: 55,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)),
              width: 180,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.deliver_to,
                          style: TextStyle(fontFamily: 'siem reab',color: Colors.grey, fontSize: 13),
                        ),
                        Text('Aeon Mall...',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,fontFamily: 'siem reab',
                                fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Image.asset(
                        'images/location_imagess.png',
                        width: 55,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)),
              width: 180,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.deliver_to,
                          style: TextStyle(fontFamily: 'siem reab',color: Colors.grey, fontSize: 13),
                        ),
                        Text('Aeon Mall S...',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,fontFamily: 'siem reab',
                                fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Image.asset(
                        'images/location_imagess.png',
                        width: 55,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)),
              width: 180,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.deliver_to,
                          style: TextStyle(fontFamily: 'siem reab',color: Colors.grey, fontSize: 13),
                        ),
                        Text('Aeon Mall S..',
                            style: TextStyle(
                                color: Colors.black,fontFamily: 'siem reab',
                                fontWeight: FontWeight.bold,
                                fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Image.asset(
                        'images/location_imagess.png',
                        width: 55,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFF5F5F5)),
              width: 180,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _language.deliver_to,
                          style: TextStyle(fontFamily: 'siem reab',color: Colors.grey, fontSize: 13),
                        ),
                        Text('Central Ma...',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,fontFamily: 'siem reab',
                                fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 15),
                      child: Image.asset(
                        'images/location_imagess.png',
                        width: 55,
                      ),
                    )
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

class PositionedList extends StatelessWidget {
  const PositionedList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return PostionedList();
  }
}

class PostionedList extends StatelessWidget {
   PostionedList({
    super.key,
  });
  Language _language = Khmer();
  int _langIndex = 0;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Positioned(
      top: 200,
      left: 16,
      right: 16,
      child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: isLightMode ? Colors.white : Colors.black12,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Image.asset(
                  'images/blue_bold.png',
                  height: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  _language.royal_bodhitree,
                  style: TextStyle(
                      color: isLightMode ? Colors.black : Colors.white,fontFamily: 'siem reab',fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.swap_vert,
                      color: Colors.grey,
                    ))
              ]),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  child: Text(
                    ':',
                    style: TextStyle(
                        color: isLightMode ? Colors.black : Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset('images/red_bold.png', height: 25),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    _language.deliver_to,
                    style: TextStyle(
                        color: isLightMode ? Colors.black : Colors.white,fontFamily: 'siem reab',fontSize: 13,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
