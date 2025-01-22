import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stacklist(isLightMode: isLightMode),
      ),
    );
  }
}

class Stacklist extends StatelessWidget {
   Stacklist({
    super.key,
    required this.isLightMode,
  });
  Language _language = Khmer();
  int _langIndex = 0;

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    return Stack(
      children: [
        // Background and Content
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 220,
              color: isLightMode ? Colors.white : Colors.black12,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 165, top: 25),
                          child: Text(
                            _language.hotel,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: isLightMode ? Colors.black : Colors.white,
                              fontSize: 18,
                              fontFamily: 'siem reab'
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Image.asset(
                                'images/markbook_hotel.png',
                                width: 30,
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'images/question_hotel.png',
                                width: 30,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                         Text(
                          _language.thousands_of_hotels,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff03594d),
                            fontSize: 23,
                            fontFamily: 'siem reab'
                          ),
                        ),
                         Text(
                          _language.to_choose_from,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff03594d),
                            fontSize: 23,
                            fontFamily: 'siem reab'
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: _language.book_a_stay,
                            style: TextStyle(fontFamily: 'siem reab',
                            fontSize: 12,
                              color: isLightMode ? Colors.black : Colors.white,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: _language.wherever,
                                  style: TextStyle(fontFamily: 'siem reab',
                                    color: isLightMode
                                        ? Colors.black
                                        : Colors.white,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      _language.you_fancy,
                      style: TextStyle(fontFamily: 'siem reab',fontSize: 12,
                        color: isLightMode ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Body Content
            BookHotel(isLightMode: isLightMode),
            const Divider(),
            ListTile(
              leading: Image.asset('images/agoda_hotel.png'),
              title: const Text("Agoda",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle:  Text(
                _language.best_price,
                style:
                    TextStyle(fontFamily: 'siem reab',fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            const Divider(),
            ListTile(
              leading: Image.asset(
                'images/booking_hotel.png',
                width: 60,
              ),
              title: const Text("Booking.com",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle:  Text(
                _language.save_Big,
                style:
                    TextStyle(fontFamily: 'siem reab',fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            ),
            hotelItem()
          ],
        ),
        Positioned(
          left: 260,
          top: 80,
          child: Image.asset(
            'images/person_hotel.png',
            width: 150,
            height: 150,
          ),
        ),
        Positioned(
          top: 40,
          left: 5,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: isLightMode ? Colors.black : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class hotelItem extends StatelessWidget {
  const hotelItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLightMode = Theme.of(context).brightness == Brightness.light;
    return Container(
      color: isLightMode ? Colors.white : Colors.black12,
      width: double.infinity,
      height: 500,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 150, right: 70, left: 70),
        child: Image.asset(
          'images/Item_hotel.png',
          height: 100,
        ),
      ),
    );
  }
}

class BookHotel extends StatelessWidget {
   BookHotel({
    Key? key,
    required this.isLightMode,
  }) : super(key: key);
    Language _language = Khmer();
  int _langIndex = 0;

  final bool isLightMode;

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    final isLightMode = Theme.of(context).brightness == Brightness.light;

    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 240),
      child: Text(
        _language.Book_your,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          fontFamily: 'siem reab',
          color: isLightMode ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}
