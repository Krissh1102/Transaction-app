import 'package:assignment3/Authentication/controller/auth_controller.dart';
import 'package:assignment3/src/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OTPLogin extends ConsumerStatefulWidget {
  const OTPLogin({
    super.key,
    required this.email,
    required this.testingotp,
  });

  static const routePath = "/otploginverify";

  final String email;
  final String testingotp;

  @override
  ConsumerState<OTPLogin> createState() => _OTPLoginState();
}

class _OTPLoginState extends ConsumerState<OTPLogin> {
  final TextEditingController otpController = TextEditingController();

  @override
  final defaultPinTheme = PinTheme(
    width: 40,
    height: 56,
    textStyle: const TextStyle(
        fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.black),
      color: Colors.black,
    ),
  );

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
                  'Enter the OTP sent. (Login)',
                  style: TextStyle(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Pinput(
                  controller: otpController,
                  autofocus: true,
                  length: 6,
                  toolbarEnabled: false,
                  defaultPinTheme: defaultPinTheme,
                  separatorBuilder: (index) {
                    return const SizedBox(
                      width: 8,
                    );
                  },
                ),
                // OtpTextField(
                //   numberOfFields: 6,
                //   fillColor: Colors.black.withOpacity(0.1),
                //   filled: true,
                //   onSubmit: (String verificationCode) {
                //     verificationCode = otpController;
                //   },
                // ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () {
                          ref
                              .read(authControllerProvider.notifier)
                              .verifyOtpSignin(
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
