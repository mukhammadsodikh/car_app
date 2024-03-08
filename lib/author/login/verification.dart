import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.only(top: 40),
          width: double.infinity,
          child: Column(
              children: [
                Text(
                    "Almost there",
                    style: GoogleFonts.montserrat(textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold))
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                      "Please enter the 6-digit code sent to your email verification...",
                      style: GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Colors.black, fontSize: 14))
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Text(
                      "+ 998 97 *** ** 07",
                      style: GoogleFonts.montserrat(textStyle: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 14,
                          fontWeight: FontWeight.bold))
                  ),
                ),
                Pinput(
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  onCompleted: (pin) => debugPrint(pin),
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(

                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => VerificationScreen()),
                            // home
                            (route) => false,
                      );
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text(
                        'Verify',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}