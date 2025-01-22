import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class RentScreen extends StatefulWidget {
  // const RentScreen({super.key});
  

  @override
  State<RentScreen> createState() => _RentScreenState();
}

class _RentScreenState extends State<RentScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  @override
  Widget build(BuildContext context) {
  _language = context.watch<LanguageLogic>().language;
  _langIndex = context.watch<LanguageLogic>().langIndex;
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      elevation: 0,
    );
  }

  Widget buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'images/image-removebg-preview.png',
                height: 200,
              ),
            ),
             Text(
              _language.Rent_a_vehicle,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'siem reab',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Visit multiple places or attend events in the city. "
                "Be it work or fun, you'll travel with ease.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'siem reab',
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child:  Text(
                _language.find_out_more,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'siem reab',
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        Card(
          margin: const EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.my_location, color: Colors.blue),
                    const SizedBox(width: 10),
                    Text(
                      _language.current_location,
                      style: const TextStyle(fontSize: 16,fontFamily: 'siem reab',),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Icon(Icons.access_time, color: Colors.blue),
                    const SizedBox(width: 10),
                    Text(
                      _language.how_long,
                      style: const TextStyle(fontSize: 16,fontFamily: 'siem reab',),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
