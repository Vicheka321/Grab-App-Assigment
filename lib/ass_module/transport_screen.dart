import 'package:flutter/material.dart';

class TransportScreen extends StatefulWidget {
  const TransportScreen({super.key});

  @override
  State<TransportScreen> createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildSearch(),
          _buildlistview(),
          _buildGridView(),
          _buildListslideshow()
        ],
      ),
    );
  }

  Widget _buildSearch() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildHeader(),
        Positioned(
          top: 220,
          left: 12,
          right: 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 2),
                        blurRadius: 6,
                        spreadRadius: 2,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.where_to_vote,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Where to?',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Siem Reap',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  border: Border(
                    left: BorderSide(width: 0.5),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Now",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Siem Reap',
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6ACD9F),
                Color(0xFF58D4F8),
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Transport',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Siem Reap',
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.map, color: Colors.black),
                            SizedBox(width: 5),
                            Text(
                              "Map",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Siem Reap',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Expanded(
                          flex: 3,
                          child: Text(
                            "Wherever you're going, let's get you there!",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Siem Reap',
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            'images/image_transport_hearder.png',
                            fit: BoxFit.cover,
                            height: 120,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 30,
        )
      ],
    );
  }

  Widget _buildlistview() {
    return SizedBox(
      height: 240,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Color(0xFF6ACD9F),
            ),
            title: Text("Aeon Mall Phnom Penh"),
            subtitle:
                Text("Samdach Sothearos Boulevard 3, Tonle Bassac, Cambodia"),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Color(0xFF6ACD9F),
            ),
            title: Text("Pizza 4P's Phnom Penh"),
            subtitle: Text("Sisowath Quay, Chey Chumneas, Daun Penh, Cambodia"),
          ),
          ListTile(
            leading: Icon(
              Icons.location_on,
              color: Color(0xFF6ACD9F),
            ),
            title: Text("Naga World 1"),
            subtitle: Text(
                "Samdech Techo Hun Sen Park Street, Tonle Bassac, Cambodia"),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rides for your every need",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Siem Reap',
            ),
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 5 / 6,
            ),
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFB3ECFF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GoNow",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Siem Reap',
                            color: islightMode ? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "No drop-off required",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Siem Reap',
                            color: islightMode ? Colors.white : Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFffd3ae),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Advance Booking",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Siem Reap',
                            color: islightMode ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFe0f689),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rent by the hour",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Siem Reap',
                            color: islightMode ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildListslideshow() {
    bool islightMode = Theme.of(context).brightness == Brightness.light;

    final slides = [
      {
        'image': 'images/transport_slideshow2.jpg',
        'caption': 'Use our Business Profile',
        'subcaption': 'Expense rides to your company with ease',
      },
      {
        'image': 'images/transport_slideshow.jpg',
        'caption': 'Make an Advance Booking',
        'subcaption': 'Breeze past last-minute stress',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Travel Abroad",
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Siem Reap',
              color: islightMode ? Colors.black : Colors.white,
            ),
          ),
        ),
        Container(
          height: 240,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: slides.length,
            itemBuilder: (context, index) {
              final slide = slides[index];
              return Container(
                margin: const EdgeInsets.only(right: 16),
                width: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(slide['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      slide['caption']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      slide['subcaption']!,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
