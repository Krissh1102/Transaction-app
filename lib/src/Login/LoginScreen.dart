import 'package:assignment3/Authentication/controller/auth_controller.dart';
import 'package:assignment3/models/BottomNavigationBar.dart';
import 'package:assignment3/src/HomeScreen.dart';
import 'package:assignment3/src/Login/OTPscreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late bool _isObsurce;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // ignore: unused_field
  bool _isSigningIn = false;
  @override
  void initState() {
    super.initState();
    _isObsurce = true;
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 239, 238, 238)),
                        child: const Center(
                            child: Icon(Icons.arrow_back_rounded))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Login To Ricoz ',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.24,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.24,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Color.fromARGB(104, 158, 158, 158)),
                          hintText: 'hello@ricozindia.com',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      letterSpacing: -0.24,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty || value.length >= 4) {
                          return 'Please enter a Password that is 4 or more characters long ';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIconColor:
                            const Color.fromARGB(116, 158, 158, 158),
                        suffixIcon: IconButton(
                            padding:
                                const EdgeInsetsDirectional.only(end: 12.0),
                            onPressed: () {
                              setState(() {
                                _isObsurce = !_isObsurce;
                              });
                            },
                            icon: _isObsurce
                                ? const Icon(Icons.visibility_outlined)
                                : const Icon(Icons.visibility)),
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(104, 158, 158, 158)),
                        hintText: 'Your Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      obscureText: _isObsurce,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          color: Color(0xFF41D27B),
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          letterSpacing: -0.24,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: const BoxDecoration(),
                    width: width,
                    height: 45,
                    child: ElevatedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: () async {
                          ref.read(authControllerProvider.notifier).login(
                              email: emailController.text.trim().toString(),
                              password:
                                  passwordController.text.trim().toString(),
                              context: context);
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.24,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 154,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Or',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: -0.24,
                          ),
                        ),
                      ),
                      Container(
                        width: 154,
                        decoration: const ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1,
                              strokeAlign: BorderSide.strokeAlignCenter,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: () async {
                          setState(() {});
                        },
                        icon: const Image(
                          image: AssetImage(
                              'assets/images/NewUserScreen/Google.png'),
                        ),
                        label: const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                        ),
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(
                              'assets/images/NewUserScreen/Apple.png'),
                        ),
                        label: const Text(
                          'Continue with Apple',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage(
                                'assets/images/NewUserScreen/ricoz 2.png')),
                        Text(
                          'Ricoz India Pvt.Ltd',
                          style: TextStyle(
                            color: Color(0xFF878787),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildSmallButton(bool isDone) {
  return Container(
    decoration:
        const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    child: isDone
        ? Container(
            width: 25,
            height: 25,
            color: Colors.green,
            child: const Icon(
              Icons.done,
              size: 52,
              color: Colors.white,
            ))
        : const CircularProgressIndicator(
            color: Colors.white,
          ),
  );
}
