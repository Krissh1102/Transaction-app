import 'package:assignment3/models/appdata.dart';
import 'package:assignment3/src/ChatScreen/ChatScreen.dart';

import 'package:assignment3/src/DashBoard/DashBoardScreen.dart';
import 'package:assignment3/src/Filter/FilterScreen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
          onTap: () {
            Get.to(() => const ChatScreen());
          },
          child: Image.asset('assets/images/18354578 1.png')),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {},
          child: CircleAvatar(
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FilterScreen()));
            },
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Image.asset('assets/images/Vector.png'),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(
                  bottom: 20, left: 19, right: 20, top: 25),
              width: 354,
              height: 199,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 2, color: Color(0xFFF6D78B)),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage(
                        'assets/images/Homescreen/122Z_2210.w018.n001.47A.p23 1.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Settle Now ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'or get today’s\nsettlements credited\nautomatically',
                              style: TextStyle(
                                color: Color.fromARGB(255, 144, 144, 144),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'By 8AM Today',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 25,
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF6D78B)),
                          onPressed: () {},
                          child: const Text(
                            'Check Now',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Row(
            children: [
              const Text(
                'Recent Transactions ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                width: 54,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(const DashBoardScreen(),
                        transition: Transition.zoom,
                        duration: const Duration(seconds: 1));
                  },
                  child: const Text(
                    'View More',
                    style: TextStyle(
                      color: Color(0xFFEA4335),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0.09,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
              fit: FlexFit.loose,
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: Appdata.appdata.length,
                  itemBuilder: (context, index) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              SizedBox(
                                  width: 140,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Appdata.appdata[index].name,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          height: 0.09,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(Appdata.appdata[index].occuption,
                                          style: const TextStyle(
                                            color: Color(0xFF878787),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            height: 0.12,
                                          )),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        Appdata.appdata[index].date,
                                        style: const TextStyle(
                                          color: Color(0xFFCD5555),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          height: 0.12,
                                        ),
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                width: 80,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Appdata.appdata[index].number,
                                    style: const TextStyle(
                                      color: Color(0xFFCD5555),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      height: 0.09,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    Appdata.appdata[index].companyName,
                                    style: const TextStyle(
                                      color: Color(0xFF878787),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    Appdata.appdata[index].email,
                                    style: const TextStyle(
                                      color: Color(0xFF346AC5),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 0.12,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: Colors.black,
                          ),
                        ]);
                  },
                ),
              ))
        ]),
      ),
    );
  }
}
