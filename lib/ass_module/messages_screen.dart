import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'langauge_data.dart';
import 'langauge_logic.dart';


class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  Language _language = Khmer();
  int _langIndex = 0;
  bool isFirstButtonSelected = true;
  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          _language.messages,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            // color: Colors.black,
            fontSize: 23,
            fontFamily: 'siem reab',
          ),
        ),
      ),
      body: Column(
        children: [
          _buildSwitchBar(),
          Expanded(
            child: isFirstButtonSelected
                ? ChatsPage() // Show ChatsPage when first button is selected
                : NotificationsPage(), // Show NotificationsPage when second button is selected
          ),
        ],
      ),
    );
  }

  Widget _buildSwitchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20, top: 10),
      child: Row(
        children: [
          SizedBox(
            width: 170,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirstButtonSelected = true;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isFirstButtonSelected
                    ? const Color.fromARGB(255, 30, 77, 32)
                    : const Color(0xFFbde0fe),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 3,
              ),
              child: Center(
                child: Text(
                  _language.chats,
                  style: TextStyle(
                    color: isFirstButtonSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'siem reab',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 170,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirstButtonSelected = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: !isFirstButtonSelected
                    ? const Color.fromARGB(255, 30, 77, 32)
                    : const Color(0xFFbde0fe),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 3,
              ),
              child: Center(
                child: Text(
                  _language.notifications,
                  style: TextStyle(
                    color: !isFirstButtonSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    fontFamily: 'siem reab',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Example Pages
class ChatsPage extends StatelessWidget {
  Language _language = Khmer();
  int _langIndex = 0;
  // const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Padding(
      padding: const EdgeInsets.only(top: 170),
      child: Center(
        child: Column(
          children: [
            Image.network(
              'https://www.peintureboomerang.com/wp-content/uploads/2020/04/AVATAR_Laurence_casque-1024x1024.png',
              width: 500,
              height: 300,
            ),
            const SizedBox(width: 10),
            Text(
              _language.find_your_chats_with_our_support,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'siem reab',
              ),
            ),
            const SizedBox(height: 10),
            Text(
              _language.specialists_here,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                // color: Colors.black,
                fontFamily: 'siem reab',
              ),
            ),
            const SizedBox(height: 18),
            Text(
              _language.you_can_also_get_help_from_them_via_our,
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                fontSize: 12
              , fontFamily: 'siem reab',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  Language _language = Khmer();
  int _langIndex = 0;
  

  final List<MessageModel> messages = [
    MessageModel(
      title: 'Satisfy cravings easily today',
      subtitle: 'Order now on GrabFood',
      date: 'Wed',
      icon: Icons.local_offer,
      isUnread: true,
    ),
    MessageModel(
      title: '📢 បញ្ចុះ 60% ⚡ គ្រាម MORNING សម្រាប់...',
      subtitle: '60% off ⚡ MORNING for...',
      date: '30 Dec',
      icon: Icons.local_offer,
      isUnread: true,
    ),
    MessageModel(
      title: 'You\'re all set to enjoy Grab!',
      subtitle: 'Whether it\'s a meal, a ride, or more...',
      date: '29 Dec',
      icon: Icons.local_offer,
      isUnread: true,
    ),
    MessageModel(
      title: 'សន្សំសំចៃប្រាក់',
      subtitle: 'Ad · MeiMei Fresh Fruit And Juicy...',
      date: '',
      icon: Icons.local_offer,
      isUnread: false,
    ),
    MessageModel(
      title: 'រៀបចំហ្មតួក',
      subtitle: 'ដឹកជញ្ចូន GrabFood ត្រឹម ...',
      date: '25 Dec',
      icon: Icons.local_offer,
      isUnread: true,
    ),
  ];

  NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    _language = context.watch<LanguageLogic>().language;
    _langIndex = context.watch<LanguageLogic>().langIndex;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Scaffold(
        body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color.fromARGB(196, 255, 153, 0),
                child: Icon(message.icon, color: Colors.white),
              ),
              title: Text(message.title,
                  style: TextStyle(
                      fontFamily: 'siem reab',
                      fontWeight: message.isUnread
                          ? FontWeight.bold
                          : FontWeight.normal)),
              subtitle: Text(
                message.subtitle,
                style: TextStyle(
                  fontFamily: 'siem reab',
                ),
              ),
              trailing: Text(
                message.date,
                style: TextStyle(
                  color: message.isUnread ? Colors.red : null,
                  fontFamily: 'siem reab',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MessageModel {
  final String title;
  final String subtitle;
  final String date;
  final IconData icon;
  final bool isUnread;

  MessageModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.icon,
    required this.isUnread,
  });
}
