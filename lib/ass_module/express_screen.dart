import 'package:flutter/material.dart';

class ExpressScreen extends StatelessWidget {
  const ExpressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
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
                              'Welcome To Express',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'Get your item dekivered,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                            Text(
                              'whenever,wherever,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2, bottom: 25),
                          child: Image.asset(
                            'assets/Express_1.jpg',
                            width: 179,
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Positioned container
            Positioned(
              top: 200,
              left: 16,
              right: 16,
              child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Royal Bodhitree Development',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          child: Text(':',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dekiver to?',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
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
            Padding(
              padding: const EdgeInsets.only(top: 330),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF5F5F5)),
                      width: 180,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Delivery to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 19),
                                ),
                                Text('Phnom Penh',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                            Image.asset(
                              'assets/location.jpg',
                              fit: BoxFit.cover,
                              width: 55,
                              color: Colors.black38,
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
                                  'Delivery to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 19),
                                ),
                                Text('Aeon Mall...',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                            Image.asset(
                              'assets/location.jpg',
                              fit: BoxFit.cover,
                              width: 55,
                              color: Colors.black38,
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
                                  'Delivery to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 19),
                                ),
                                Text('Aeon Mall S...',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                            Image.asset(
                              'assets/location.jpg',
                              fit: BoxFit.cover,
                              width: 55,
                              color: Colors.black38,
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
                                  'Delivery to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 19),
                                ),
                                Text('Naga World 1',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                            Image.asset(
                              'assets/location.jpg',
                              fit: BoxFit.cover,
                              width: 55,
                              color: Colors.black38,
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
                                  'Delivery to',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 19),
                                ),
                                Text('Central Ma...',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15))
                              ],
                            ),
                            Image.asset(
                              'assets/location.jpg',
                              fit: BoxFit.cover,
                              width: 55,
                              color: Colors.black38,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 30),
              child: Text(
                'Sell withc Grab Shop',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480, left: 30),
              child: Text(
                'A simpler way to sell online, commission-free!',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  color: Colors.lightBlueAccent,
                ),
                SizedBox(width: 10),
                Container(
                  width: 100,
                  height: 70,
                  color: Colors.lightBlueAccent,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
