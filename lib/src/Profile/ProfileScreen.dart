import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                )),
            toolbarHeight: 70,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'My Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 0.07,
              ),
            ),
            actions: [
              GestureDetector(
                child: const SizedBox(
                  width: 24,
                  height: 24,
                  child: Center(
                      child: Icon(
                    Icons.more_horiz_outlined,
                  )),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ]),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 40, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/avatar.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rishav Bhardwaz',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Intern',
                          style: TextStyle(
                            color: Color(0xFF878787),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0.09,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 100),
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Color(0xFF878787),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 0.07,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(189, 65, 210, 123),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ProfileScreen/Wallet_alt_duotone_line.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          children: [
                            SizedBox(
                              height: 55,
                            ),
                            Text(
                              'Payments',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 100,
                            height: 30,
                            decoration: ShapeDecoration(
                              color: const Color.fromARGB(178, 55, 112, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 18,
                                    ),
                                    Text(
                                      '2 new',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 0.11,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: const ShapeDecoration(
                            color: Color.fromARGB(201, 246, 216, 139),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ProfileScreen/User_alt_light.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          children: [
                            SizedBox(
                              height: 55,
                            ),
                            Text(
                              'Clients',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                          child: const Center(
                            child: Image(
                              image: AssetImage(
                                  'assets/images/ProfileScreen/Flag_finish_light.png'),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          children: [
                            SizedBox(
                              height: 55,
                            ),
                            Text(
                              'Privacy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 0.07,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'My account',
                      style: TextStyle(
                        color: Color(0xFF878787),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 0.07,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Switch to Other Account ',
                      style: TextStyle(
                        color: Color(0xFF346AC5),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Log Out',
                      style: TextStyle(
                        color: Color(0xFFEA4335),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
