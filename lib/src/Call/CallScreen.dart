import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            floatingActionButton: SizedBox(
              width: 70,
              height: 70,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/images/CallScreen/Phone.png'),
                ),
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
                color: Colors.black,
                height: 120,
                shape: const CircularNotchedRectangle(),
                notchMargin: 5,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 1,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                            'assets/images/CallScreen/Volume_Max.png')),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                            'assets/images/CallScreen/microphone.png')),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                            'assets/images/CallScreen/video-plus.png')),
                    const SizedBox(
                      width: 1,
                    ),
                  ],
                )),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 218,
                  color: Colors.black,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ricoz Connect',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rishav Bhardwaz',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '07:45',
                        style: GoogleFonts.poppins(
                          color: const Color(0xFF8E8E8E),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 473.8,
                  width: double.infinity,
                  child: Image(
                      image: AssetImage('assets/images/CallScreen/yep4 1.png'),
                      fit: BoxFit.fill),
                )
              ],
            )));
  }
}
