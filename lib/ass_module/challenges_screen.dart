import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  AppBar _buildAppBar() {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {
          // Close the screen (pop the route)
          Navigator.pop(context);
        },
      ),
      title:  Text(_language.challenges),
      bottom: TabBar(
        indicatorColor: Colors.green,
        labelColor: Colors.green,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: _language.current),
          Tab(text: _language.past),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return TabBarView(
      children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(
                  'images/illustration.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _language.watch_this,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'siem reab',
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(
                  'images/challenges_past.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _language.your_challenges,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                  fontFamily: 'siem reab',
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
