import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';


import '../car/car_settings.dart';
import '../language/language.dart';
import '../widgets/forward_buttton.dart';
import '../widgets/setting_item.dart';
import '../widgets/setting_switch.dart';
import 'edit_screen.dart';
import 'more.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;

  _logout() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Logout", style: GoogleFonts.montserrat(),),
          content: Text("Do you want to log out?", style: GoogleFonts.montserrat(),),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text("No", style: GoogleFonts.montserrat(color: Colors.red),),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: Text("Yes", style: GoogleFonts.montserrat(),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 44,),
               Text(
                "Profile", style: GoogleFonts.montserrat(textStyle: TextStyle(
                 fontSize: 36, color: Colors.deepOrange,
                 fontWeight: FontWeight.bold,
               ),),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://content3.promiflash.de/article-images/video_480/jenna-ortega-schaut-betruebt.jpg')),
                     SizedBox(width: 20),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jenna Ortega",
                          style: GoogleFonts.montserrat(textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "+998 97 707 77 07",
                          style: GoogleFonts.montserrat(textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),),
                        ),
                      ],
                    ),
                    const Spacer(),
                    ForwardButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  EditAccountScreen(),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              SettingItem(
                title: "Car Information",
                icon: Ionicons.car_outline,
                bgColor: Colors.orangeAccent.shade100,
                iconColor: Colors.deepOrange,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CarSettings()));
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orangeAccent.shade100,
                iconColor: Colors.deepOrange,
                value: "English",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Language()));
                },
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.earth,
                bgColor: Colors.orangeAccent.shade100,
                iconColor: Colors.deepOrange,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              SizedBox(height: 10,),
              Divider(),
              const SizedBox(height: 10),
              SettingItem(
                title: "More",
                icon: Ionicons.newspaper,
                bgColor: Colors.orangeAccent.shade100,
                iconColor: Colors.deepOrange,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => More()));
                },
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                            colors: [
                              Colors.deepOrange,
                              Colors.red
                            ]
                        )
                    ),
                    child: InkWell(
                      onTap: () {
                        _logout();
                      },
                      borderRadius: BorderRadius.circular(50),
                      splashColor: Colors.black,
                      child: Center(child: Text('Logout',style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600)), )),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}