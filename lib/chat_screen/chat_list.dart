import 'package:car_app/chat_screen/widgets/chat_items.dart';
import 'package:car_app/chat_screen/widgets/conversation.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatUsers.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 16),
        itemBuilder: (context, index){
          return ConversationList(
            chatUsers: chatUsers[index],
            isMessageRead: (index == 0 || index == 3)?true:false,
          );
        },
      ),
    );
  }
}
