import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class Not extends StatefulWidget {
  const Not({super.key});

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Icon(CupertinoIcons.news, color: Colors.black,),
            SizedBox(height: 5),
            Text("Hech narsa", style: GoogleFonts.poppins(textStyle: TextStyle(
              fontSize: 20
            )))
          ],
        ),
      ),
    );
  }
}
