import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../widgets/edit_item.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  String gender = "man";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {Navigator.pop(context);},
              style: IconButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                fixedSize: Size(60, 50),
                elevation: 3,
              ),
              icon: Icon(Ionicons.checkmark, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                "Edit Account",
                style: GoogleFonts.montserrat(textStyle: TextStyle(
                  fontSize: 36, color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),)
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "Photo",
                widget: Column(
                  children: [
                    CircleAvatar(radius: 50, backgroundImage: NetworkImage('https://content3.promiflash.de/article-images/video_480/jenna-ortega-schaut-betruebt.jpg')),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.orange,
                      ),
                      child:Text("Upload Image", style: GoogleFonts.montserrat(),),
                    )
                  ],
                ),
              ),
              const EditItem(
                title: "Name",
                widget: TextField(),
              ),
              const SizedBox(height: 40),
              EditItem(
                title: "Gender",
                widget: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "man";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "man"
                            ? Colors.orange
                            : Colors.orange.shade200,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Ionicons.male,
                        color: gender == "man" ? Colors.white : Colors.black,
                        size: 18,
                      ),
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          gender = "woman";
                        });
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: gender == "woman"
                            ? Colors.orange
                            : Colors.orange.shade200,
                        fixedSize: const Size(50, 50),
                      ),
                      icon: Icon(
                        Ionicons.female,
                        color: gender == "woman" ? Colors.white : Colors.black,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const EditItem(
                widget: TextField(),
                title: "Age",
              ),
              const SizedBox(height: 40),
              const EditItem(
                widget: TextField(),
                title: "Email",
              ),
            ],
          ),
        ),
      ),
    );
  }
}