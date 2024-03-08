import 'package:flutter/material.dart';

import 'chat_list.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatList(),
    );
  }
}
