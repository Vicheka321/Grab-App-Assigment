import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    padding: const EdgeInsets.only(top: 120,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Welcome To Express',style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white,
                                fontSize: 20
                            ),),
                            Text('Get your item dekivered,',style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white,
                                fontSize: 12
                            ),),
                            Text('whenever,wherever,',style: TextStyle(
                                fontWeight: FontWeight.bold,color: Colors.white,
                                fontSize: 12
                            ),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 6,bottom: 25),
                          child: Image.asset('images/Express_1.png',width: 180,height: 70,),
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
                          Image.asset('images/blue_bold.png',height: 20,),
                          SizedBox(width: 10,),
                          Text('Royal Bodhitree Development',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Spacer(),
                          IconButton(onPressed: () {}, icon: Icon(Icons.swap_vert,color: Colors.grey,))
                        ]
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: SizedBox(
                          child: Text(':',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('images/red_bold.png',height: 25),
                          SizedBox(width: 10,),
                          Text('Dekiver to?',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ],
                  )
              ),
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
                  SizedBox(width: 10,),
                  CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.receipt, color: Colors.green),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350,left: 20),
              child: Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF5F5F5)
                      ),
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Delivery to',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19
                                ),),
                                Text('Phnom Penh',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15),
                              child: Image.asset('images/location_imagess.png',
                                width: 55,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF5F5F5)
                      ),
                      width: 180,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Delivery to',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19
                                ),),
                                Text('Aeon Mall...',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15),
                              child: Image.asset('images/location_imagess.png',
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
                          color: Color(0xFFF5F5F5)
                      ),
                      width: 180,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Delivery to',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19
                                ),),
                                Text('Aeon Mall S...',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 10),
                              child: Image.asset('images/location_imagess.png',
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
                          color: Color(0xFFF5F5F5)
                      ),
                      width: 180,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Delivery to',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19
                                ),),
                                Text('Aeon Mall S..',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15),
                              child: Image.asset('images/location_imagess.png',
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
                          color: Color(0xFFF5F5F5)
                      ),
                      width: 180,
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Delivery to',style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 19
                                ),),
                                Text('Central Ma...',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15
                                ))
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,left: 15),
                              child: Image.asset('images/location_imagess.png',
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450,left: 30),
              child: Text('Sell withc Grab Shop',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20,
                  color: Colors.black
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480,left: 30),
              child: Text('A simpler way to sell online, commission-free!',style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 535,left: 25),
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
                          padding: const EdgeInsets.only(bottom: 20,left: 5),
                          child: Text('Build catalogue',style:
                          TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black
                          )
                            ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image.asset('images/book_image.jpg',
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
                        color: Color(0xffffff9bf)
                    ),
                    width: 170,
                    height: 70,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20,left: 15),
                          child: Text('Quick guide',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 30),
                          child: Image.asset('images/star_image.jpg',
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
              padding: const EdgeInsets.only(top: 630,left: 25),
              child: Text(
                'You may like',style: TextStyle(
                  fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20
              ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 700,left: 100),
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage('images/profile.jpg',
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Boss Clud',style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black
                      ),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 700,left: 100),
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage('images/message_image.jpg',
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Boss Clud',style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black
                      ),)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 10),
              child: IconButton(onPressed: () {
                Navigator.pop(context);
              }, icon: Icon(
                Icons.arrow_back,color: Colors.white,
              )),
            )
          ],
        ),
      ),

    );

  }
}

