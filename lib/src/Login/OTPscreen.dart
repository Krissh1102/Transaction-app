import 'package:assignment3/Authentication/controller/auth_controller.dart';
import 'package:assignment3/src/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPscreen extends ConsumerStatefulWidget {
  const OTPscreen({
    super.key,
    required this.email,
    required this.testingotp,
  });

  static const routePath = "/otpverify";

  final String email;
  final String testingotp;

  @override
  ConsumerState<OTPscreen> createState() => _OTPscreenState();
}

class _OTPscreenState extends ConsumerState<OTPscreen> {
  final otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'CO\nDE',
                  style: GoogleFonts.montserrat(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Verfication',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Enter the OTP sent.',
                  style: TextStyle(),
                ),
                const SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  numberOfFields: 6,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  onSubmit: (value) => (otpController),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          ref.read(authControllerProvider.notifier).verifyOtp(
                              email: widget.email,
                              otp: otpController.text.trim().toString(),
                              context: context);
                        },
                        child: const Text('Next')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
