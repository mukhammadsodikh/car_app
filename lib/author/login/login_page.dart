import 'package:car_app/author/login/verification.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../register/car_register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
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
                'Login', style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.bold, fontSize: 26)),
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
                    TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Phone', hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(
                        color: Colors.grey,
                      )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black12),
                            borderRadius: BorderRadius.circular(10)),
                        prefix: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            '(+998)',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 32,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Password', hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(
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
                      height: 40,
                    ),
                    SizedBox(

                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen()));
                        },
                        style: ButtonStyle(
                          foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepOrange),
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
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
                    SizedBox(height: 6,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("New Member", style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black, fontSize: 13))),
                       TextButton(onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => CarRegisterScreen()),
                         );
                       },
                           child:  Text("Register Now", style: GoogleFonts.montserrat(textStyle:
                       TextStyle(color: Colors.deepOrange, fontSize: 13, fontWeight: FontWeight.bold)),))
                     ],
                   ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}