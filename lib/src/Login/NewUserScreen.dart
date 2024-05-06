import 'package:assignment3/src/Login/LoginScreen.dart';
import 'package:assignment3/src/Login/SignUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class NewUserScreen extends StatefulWidget {
  const NewUserScreen({super.key});
  static const routePath = "/newuser";

  @override
  State<NewUserScreen> createState() => _NewUserScreenState();
}

class _NewUserScreenState extends State<NewUserScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              SizedBox(
                height: 330,
                width: double.infinity,
                child: Stack(
                  children: [
                    DottedBorder(
                      color: Colors.grey,
                      borderType: BorderType.Circle,
                      dashPattern: const [10, 15],
                      child: Container(
                        width: 323.06,
                        height: 323.06,
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                      top: 294,
                      bottom: 0,
                      right: 211,
                      left: 82,
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/NewUserScreen/Photo 2.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 75,
                      bottom: 220,
                      right: 295,
                      left: 0,
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/NewUserScreen/Photo 3.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      bottom: 105,
                      right: 0,
                      left: 297,
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: ShapeDecoration(
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/NewUserScreen/Photo 1.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -1,
                      bottom: 295,
                      right: 80,
                      left: 212,
                      child: Container(
                        width: 31,
                        height: 31,
                        decoration: const ShapeDecoration(
                          shape: Border(),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/NewUserScreen/Photo 4.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      bottom: 309,
                      right: 229,
                      left: 89,
                      child: Container(
                        width: 13.67,
                        height: 13.67,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF979797),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 288,
                      bottom: 27,
                      right: 65,
                      left: 252,
                      child: Container(
                        width: 13.67,
                        height: 13.67,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF979797),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      bottom: 60,
                      right: 60,
                      left: 60,
                      child: AnimatedRotation(
                        turns: 70,
                        duration: const Duration(minutes: 10),
                        child: DottedBorder(
                          color: Colors.grey,
                          borderType: BorderType.Circle,
                          dashPattern: const [10, 15],
                          child: Container(
                            width: 193,
                            height: 193,
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 80,
                        bottom: 80,
                        right: 70,
                        left: 70,
                        child: Image(
                          image: AssetImage(
                              'assets/images/NewUserScreen/ricoz 1.png'),
                        )),
                    Positioned(
                      top: 220,
                      bottom: 98,
                      right: 245,
                      left: 75,
                      child: Container(
                        width: 9.94,
                        height: 9.94,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF979797),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 98,
                      bottom: 220,
                      right: 75,
                      left: 245,
                      child: Container(
                        width: 9.94,
                        height: 9.94,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF979797),
                          shape: OvalBorder(),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Container(
                decoration: const BoxDecoration(),
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ));
                    },
                    child: const Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    onPressed: () {
                      context.go(SignUpScreen.routePath);
                    },
                    child: const Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.24,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
