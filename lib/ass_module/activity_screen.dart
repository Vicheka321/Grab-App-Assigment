import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Scaffold(
      backgroundColor: islightMode ? Colors.white : Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            'Activity',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: islightMode ? Colors.black : Colors.white,
              fontSize: 23,
            ),
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
                    'History',
                    style: TextStyle(
                      color: islightMode ? Colors.black : Colors.white,
                      fontSize: 15,
                    ),
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
                Image.asset('images/person_message.png',width: 350,height: 300,),
                const SizedBox(height: 20),
                Text(
                  'Nothing happening now',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: islightMode ? Colors.black : Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'when you use our service, you will see them here',
                  style: TextStyle(
                    color: islightMode ? Colors.black : Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
