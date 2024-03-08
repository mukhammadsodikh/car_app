import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarSettings extends StatefulWidget {
  const CarSettings({super.key});

  @override
  State<CarSettings> createState() => _CarSettingsState();
}

class _CarSettingsState extends State<CarSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Jenna Ortega", style: GoogleFonts.poppins(textStyle: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.blueGrey
            ))),
            SizedBox(height: 2),
            Text("User", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            SizedBox(height: 8),
            Image.network('https://lionmotors.uz/wp-content/uploads/2020/11/sparkwhite.jpg'),
            SizedBox(height: 5,),
            ListTile(
              title: Text("Car type", style: GoogleFonts.poppins(textStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.blueGrey,
              ))),
              trailing: Text("Spark", style: GoogleFonts.poppins(textStyle: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.blueGrey, fontSize: 20
              ))),
            ),
            Divider(),
            ListTile(
              title: Text("State Number", style: GoogleFonts.poppins(textStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.blueGrey,
              ))),
              trailing: Text("60 | U 021 AA", style: GoogleFonts.poppins(textStyle: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.blueGrey, fontSize: 20
              ))),
            ),
            Divider(),
            ListTile(
              title: Text("Certificate number", style: GoogleFonts.poppins(textStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.blueGrey,
              ))),
              trailing: Text("ABD001", style: GoogleFonts.poppins(textStyle: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.blueGrey, fontSize: 20
              ))),
            ),
            Divider(),
            ListTile(
              title: Text("Car body number", style: GoogleFonts.poppins(textStyle: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.blueGrey,
              ))),
              trailing: Text("Spark", style: GoogleFonts.poppins(textStyle: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.blueGrey, fontSize: 20
              ))),
            ),
          ],
        ),
      ),
    );
  }
}
