import 'package:flutter/material.dart';

class TestGrid extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the GlobalKey to the Scaffold
      appBar: AppBar(title: Text('Persistent Bottom Sheet Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showPersistentBottomSheet(context); // Trigger the bottom sheet
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }

  // Method to show the persistent bottom sheet
  void _showPersistentBottomSheet(BuildContext context) {
    _scaffoldKey.currentState?.showBottomSheet(
      (BuildContext context) {
        return Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Persistent Bottom Sheet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.share, color: Colors.white),
                title: Text('Share', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle share
                  Navigator.pop(context); // Dismiss the bottom sheet
                },
              ),
              ListTile(
                leading: Icon(Icons.link, color: Colors.white),
                title: Text('Get link', style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Handle get link
                  Navigator.pop(context); // Dismiss the bottom sheet
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
