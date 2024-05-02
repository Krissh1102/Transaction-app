import 'package:assignment3/src/Profile/ProfileScreen.dart';
import 'package:assignment3/theme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:toggle_switch/toggle_switch.dart';
// ignore: unused_import
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeProvider themeNotifier, child) {
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
          ),
          body: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 41,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Transaction',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Settlements',
                        style: GoogleFonts.inter(
                          color: const Color(0xFF989898),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      width: 130,
                      height: 25,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEDEDED),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFD5D5D5)),
                          borderRadius: BorderRadius.circular(31),
                        ),
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset(
                                    'assets/images/FilterScreen/image 133.png')),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Date Range',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(8)),
                            )
                          ]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.all(4),
                        width: 119,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFEDEDED),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFD5D5D5)),
                            borderRadius: BorderRadius.circular(31),
                          ),
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                      'assets/images/FilterScreen/image 135.png')),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Filter',
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8)),
                              )
                            ]))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 393,
                  height: 201,
                  decoration: ShapeDecoration(
                    color: Colors.black.withOpacity(0.3199999928474426),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '29th May’23 , Today Collection',
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Total Balance\n',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: '₹ 320,299',
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'No Dues',
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 378,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 4),
                            Image.asset(
                                'assets/images/FilterScreen/image 137.png'),
                            const SizedBox(width: 10),
                            Text(
                              'Next settlement to be credited by 8AM, tomorrow',
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/images/FilterScreen/image 138.png'),
                Text(
                  'No result found',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'No transaction found, Please select a valid time\nchange it using date filter on top ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                /*
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 70.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: const [
                    FontAwesomeIcons.lightbulb,
                    FontAwesomeIcons.solidLightbulb,
                  ],
                  iconSize: 30.0,
                  activeBgColors: const [
                    [Colors.black45, Colors.black26],
                    [Colors.yellow, Colors.orange]
                  ],
                  animate: true,
                  curve: Curves.bounceInOut,
                  onToggle: (index) {
                    themeNotifier.isDarkk
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  },
                ),*/
                IconButton(
                    onPressed: () {
                      themeNotifier.isDarkk
                          ? themeNotifier.isDark = false
                          : themeNotifier.isDark = true;
                    },
                    icon: themeNotifier.isDarkk
                        ? const Icon(Icons.sunny)
                        : const Icon(Icons.nightlight_round_sharp))
              ],
            ),
          ),
        ),
      );
    });
  }
}
