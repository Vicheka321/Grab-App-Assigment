import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GiftsScreen extends StatefulWidget {
  const GiftsScreen({super.key});

  @override
  State<GiftsScreen> createState() => _GiftsScreenState();
}

class _GiftsScreenState extends State<GiftsScreen> {
  bool isDeliverySelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _body());
  }

  Widget _body() {
    return Column(
      children: [
        _buildOptionGift(),
        isDeliverySelected ? _buildRedeemOption() : _buildHistoryOption()
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text("Your Gifts"),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _buildOptionGift() {
    return Padding(
      padding: const EdgeInsets.only(
          top: 15.0, left: 25.0, right: 25.0, bottom: 25.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isDeliverySelected
                    ? const Color(0xFF17443f)
                    : const Color(0xFFeef9fb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color:
                        isDeliverySelected ? Colors.transparent : Colors.grey,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = true;
                });
              },
              child: Text(
                "Redeem",
                style: TextStyle(
                  color: isDeliverySelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: !isDeliverySelected
                    ? const Color(0xFF17443f)
                    : const Color(0xFFeef9fb),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                    color:
                        !isDeliverySelected ? Colors.transparent : Colors.grey,
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  isDeliverySelected = false;
                });
              },
              child: Text(
                "History",
                style: TextStyle(
                  color: !isDeliverySelected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRedeemOption() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: Image.asset('images/gifts_redeem.png'),
          ),
          const SizedBox(height: 20),
          const Text(
            "Have GrabGifts to redeem?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Enter your gift code to see your surprise!",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "e.g. GG12345678",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryOption() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: Image.asset(
                'images/gifts_redeem.png'), // Replace with your image
          ),
          const SizedBox(height: 20),
          const Text(
            "No gifts sent or redeemed recently",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Surprise someone with GrabGifts. Pick gifts\nfor them or let them decide what to get.\nYour choice!",
            style: TextStyle(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
