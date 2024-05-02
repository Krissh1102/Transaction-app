import 'package:assignment3/src/ChatScreen/ChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPageScreen extends StatefulWidget {
  const ChatPageScreen({super.key});

  @override
  State<ChatPageScreen> createState() => _ChatPageScreenState();
}

class _ChatPageScreenState extends State<ChatPageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 428,
              padding: const EdgeInsets.all(20),
              height: 139,
              decoration: const ShapeDecoration(
                color: Color(0xFF222222),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(42),
                      bottomRight: Radius.circular(42)),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      const Text(
                        'Ricoz India',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 57,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 73,
                          height: 49,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                                'assets/images/sms-notification.png'),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Individual',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Professional',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF8E8E8E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Merchant',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF8E8E8E),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              child: Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                width: 428,
                height: 90,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(42),
                  ),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 41864.png',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 242,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'LeBron',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              'Hey Buddy..! How u doing ?',
                              style: TextStyle(
                                color: Color(0xFF8E8E8E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '1 hour ago',
                              style: TextStyle(
                                color: Color(0xFF8E8E8E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF41D27B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(42),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
              },
              child: Container(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                width: 428,
                height: 90,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(42),
                  ),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 41864.png',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 282,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'kendrick ls',
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              'Hey! What’s your Opinion on family ties?',
                              style: TextStyle(
                                color: Color(0xFF8E8E8E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              '1 hour ago',
                              style: TextStyle(
                                color: Color(0xFF8E8E8E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF41D27B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(42),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 125,
                height: 125,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(
                    side: BorderSide(width: 3, color: Color(0xFFD9D9D9)),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Click on the Add Icon to start A new Conversation',
              style: TextStyle(
                color: Color(0xFF878787),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
