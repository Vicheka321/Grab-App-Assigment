import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  final String cover =
      'https://img.freepik.com/premium-photo/abstract-16-light-background-wallpaper-colorful-gradient-blurry-soft-smooth-motion-bright-shine_792836-53865.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StackList(cover: cover),
            Padding(
              padding: const EdgeInsets.only(right: 150.0),
              child: Text(
                'Recent transaction',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
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
                    'There’s no recent activity to show here.',
                    style: TextStyle(
                      fontSize: 16,
                      // color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See past transactions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18,
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
  const StackList({
    super.key,
    required this.cover,
  });

  final String cover;

  @override
  Widget build(BuildContext context) {
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
                        'Add Card',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Go cashless with a credit or debit card',
                        style: TextStyle(
                          color: Colors.white,
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
                      'Payment',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 5), // Space between title and subtitle
                    Text(
                      'Simple flexible everyday payments',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
