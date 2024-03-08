import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}
class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("       Choose language",  style: GoogleFonts.montserrat(textStyle: TextStyle(
          color: Colors.deepOrange, fontSize: 18, fontWeight: FontWeight.bold,
        ))),
      ),
      body: Center(
        child: CupertinoPicker(itemExtent: 70 , onSelectedItemChanged: (index) {
        }, children: [
          Text("Uzbek", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
          Text("English", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
          Text("Turkish", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
          Text("Русский", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
          Text("Tojikcha", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
          Text("Arab", style: GoogleFonts.poppins(textStyle: TextStyle(color: Colors.blueGrey))),
        ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 31, right: 31, bottom: 13, top: 14),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepOrange,
          ),
          height: 65,
          width: double.infinity,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.pop(context);
            },
            child: Center(child: Text("Apply", style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 23)))),
          ),
        ),
      ),
    );
  }
}
