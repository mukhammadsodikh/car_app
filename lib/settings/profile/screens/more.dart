import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/setting_item.dart';
import 'not.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 45),
            Text("More...", style: GoogleFonts.montserrat(textStyle: TextStyle(
              color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 36
            ))),
            SizedBox(height: 20,),
            SettingItem(
              title: "Whats news",
              icon: Ionicons.newspaper,
              bgColor: Colors.orangeAccent.shade100,
              iconColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
              },
            ),
            SizedBox(height: 20,),
            SettingItem(
              title: "FAQ",
              icon: Ionicons.newspaper_outline,
              bgColor: Colors.orangeAccent.shade100,
              iconColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
              },
            ),
            SizedBox(height: 20,),
            SettingItem(
              title: "Terms of Service",
              icon: Ionicons.newspaper_sharp,
              bgColor: Colors.orangeAccent.shade100,
              iconColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
              },
            ),
            SizedBox(height: 20,),
            SettingItem(
              title: "Privacy Policy",
              icon: Ionicons.key_outline,
              bgColor: Colors.orangeAccent.shade100,
              iconColor: Colors.deepOrange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Not()));
              },
            ),
            SizedBox(height: 420,),
            Text("Powerd by FSD", style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 10, color: Colors.blue)),)
          ],
        ),
        ),
      ),
    );
  }
}
