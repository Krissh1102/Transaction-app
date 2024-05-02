import 'package:assignment3/src/Call/CallScreen.dart';
import 'package:assignment3/src/Filter/FilterScreen.dart';
import 'package:assignment3/src/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.to(() => const ProfileScreen(),
                  transition: Transition.upToDown);
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('assets/images/avatar.png'),
            ),
          ),
          toolbarHeight: 70,
          centerTitle: true,
          title: const Text(
            'Ricoz ',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(() => const FilterScreen(),
                    transition: Transition.upToDown);
              },
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: Image.asset('assets/images/Vector.png'),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: double.infinity,
              height: 80,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_rounded)),
                  Image.asset('assets/images/Ellipse 27.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Cody Rhodes',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Active Now',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.2),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF55A99D),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(42),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CallScreen()));
                              },
                              icon: const Icon(Icons.call))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 580,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Ellipse 27.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          decoration: const ShapeDecoration(
                            color: Color(0xD3E4E4E4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Hello! Are you there?',
                              style: TextStyle(
                                color: Color(0xFF383737),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: FractionalOffset.topRight,
                      child: Container(
                        width: 192,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFC2C2C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Yes, i’m always here.. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Ellipse 27.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 40,
                              padding: EdgeInsets.all(8),
                              decoration: const ShapeDecoration(
                                color: Color(0xD3E4E4E4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Align(
                                alignment: FractionalOffset.centerLeft,
                                child: Text(
                                  'Ooo, Cool....',
                                  style: TextStyle(
                                    color: Color(0xFF383737),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 127,
                              height: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xD3E4E4E4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'settlement??',
                                  style: TextStyle(
                                    color: Color(0xFF383737),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: FractionalOffset.topRight,
                      child: Container(
                        width: 263,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFC2C2C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Yaa sure, let me check files',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Thursday 24, 2022',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.20),
                          fontSize: 14,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Ellipse 27.png'),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 157,
                              height: 40,
                              padding: EdgeInsets.all(8),
                              decoration: const ShapeDecoration(
                                color: Color(0xD3E4E4E4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Align(
                                alignment: FractionalOffset.centerLeft,
                                child: Text(
                                  'Hi, Did you find ?',
                                  style: TextStyle(
                                    color: Color(0xFF383737),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              width: 280,
                              height: 55,
                              decoration: const ShapeDecoration(
                                color: Color(0xD3E4E4E4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(27.50),
                                    topRight: Radius.circular(27.50),
                                    bottomRight: Radius.circular(27.50),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 42,
                                      height: 42,
                                      decoration: const ShapeDecoration(
                                        color: Colors.white,
                                        shape: OvalBorder(),
                                      ),
                                      child: const Icon(Icons.pause),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Image.asset('assets/images/Group 9.png')
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 50,
                              height: 40,
                              decoration: const ShapeDecoration(
                                color: Color(0xD3E4E4E4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Ok!',
                                  style: TextStyle(
                                    color: Color(0xFF383737),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: FractionalOffset.topRight,
                      child: Container(
                        width: 263,
                        height: 40,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFC2C2C2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'You will be emailed asap',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
              ),
            ),
            Form(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 80,
                  width: 300,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        suffixIconColor: const Color(0xFFC4BDBD),
                        suffixIcon: const Icon(Icons.send_outlined),
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.2),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        hintText: 'Send Message',
                        fillColor: const Color(0xFFF6F6F6),
                        filled: true,
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Color(0xFF878787), Color(0xFF383737)],
                      ),
                      shape: OvalBorder(),
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
