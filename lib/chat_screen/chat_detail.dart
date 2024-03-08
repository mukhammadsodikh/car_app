import 'package:car_app/chat_screen/widgets/chat_items.dart';
import 'package:car_app/chat_screen/widgets/chat_message_model.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget{
  const ChatDetailPage({super.key, required this.chatUsers});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();

  final ChatUsers chatUsers;
}

class _ChatDetailPageState extends State<ChatDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.black,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://randomuser.me/api/portraits/men/5.jpg"),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(widget.chatUsers.name,style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Text("Online",style: TextStyle(color: Colors.grey.shade600, fontSize: 13),),
                    ],
                  ),
                ),
                Icon(Icons.settings,color: Colors.black54,),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10,bottom: 10),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == "receiver"?Colors.grey.shade200:Colors.blue[200]),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                    ),
                  ),
                );
              },
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: Colors.white70
                  )
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.add, color: Colors.white, size: 20, ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Write message...",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        FloatingActionButton(
                          onPressed: (){},
                          child: Icon(Icons.send,color: Colors.white,size: 18,),
                          backgroundColor: Colors.blue,
                          elevation: 0,
                        ),
                      ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}