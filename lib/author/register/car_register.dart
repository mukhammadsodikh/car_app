import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login_page.dart';
import 'driver_register.dart';

class CarRegisterScreen extends StatefulWidget {
  const CarRegisterScreen({super.key});


  @override
  _CarRegisterScreenState createState() => _CarRegisterScreenState();
}

class _CarRegisterScreenState extends State<CarRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  'Car Information',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  padding: EdgeInsets.all(28),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Certificate Number',
                          hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: Colors.grey,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          labelText: 'State Number',
                          hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: Colors.grey,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black12),
                            color: Colors.white),
                        child: ExpansionTile(
                            title: Text('Car type',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 18, color: Colors.grey))),
                            children: [
                              ListTile(
                                title: Text('Nexia',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 18, color: Colors.grey))),
                                onTap: () {},
                              ),
                              ListTile(
                                title: Text('Damas',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 18, color: Colors.grey))),
                                onTap: () {},
                              ),
                              ListTile(
                                title: Text('Captiva',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 18, color: Colors.grey))),
                                onTap: () {},
                              ),
                            ]),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          labelText: 'Car Body number',
                          hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: Colors.grey,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => DriverRegistrationScreen()),
                                  (route) => false,
                            );
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.deepOrange),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              'Next >',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Old Member?",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        fontSize: 13, color: Colors.black))),
                            SizedBox(
                              height: 10,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                                child: Text("Login Now",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            fontSize: 13,
                                            color: Colors.deepOrange,
                                            fontWeight: FontWeight.bold)))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
