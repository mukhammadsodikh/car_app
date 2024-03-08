import 'package:flutter/cupertino.dart';

class ChatUsers{
  String name;
  String messageText;
  String image;
  String time;
  ChatUsers({required this.name,required this.messageText,required this.image,required this.time});
}
List<ChatUsers> chatUsers = [
  ChatUsers(name: "Jane Russel", messageText: "Awesome Setup", image: "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg", time: "Now"),
  ChatUsers(name: "Glady's Murphy", messageText: "That's Great", image: "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg", time: "Yesterday"),
  ChatUsers(name: "Jorge Henry", messageText: "Hey where are you?", image: "https://images.inc.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg", time: "31 Mar"),
  ChatUsers(name: "Philip Fox", messageText: "Busy! Call me in 20 mins", image: "https://i.pinimg.com/474x/82/19/e9/8219e955fd50a0eb26959d17f4b173c7.jpg", time: "28 Mar"),
  ChatUsers(name: "Debra Hawkins", messageText: "Thankyou, It's awesome", image: "https://i.pinimg.com/474x/39/6e/ce/396ece64bb5a89b215ff5bd8093d4315.jpg", time: "23 Mar"),
  ChatUsers(name: "Jacob Pena", messageText: "will update you in evening", image: "https://i.pinimg.com/474x/9c/90/e2/9c90e2369f92e3e5cc2fdb488874cb5a.jpg", time: "17 Mar"),
  ChatUsers(name: "Andrey Jones", messageText: "Can you please share the file?", image: "https://i.pinimg.com/474x/28/03/1c/28031cbf65e69b7da428be43501579a9.jpg", time: "24 Feb"),
  ChatUsers(name: "John Wick", messageText: "How are you?", image: "https://i.pinimg.com/474x/22/ee/40/22ee40277056a17fdeb70ffa46cbb412.jpg", time: "18 Feb"),
];


