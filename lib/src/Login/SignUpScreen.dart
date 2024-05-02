import 'dart:convert';

import 'package:assignment3/Authentication/controller/auth_controller.dart';
import 'package:assignment3/res/endpoints.dart';

import 'package:assignment3/src/HomeScreen.dart';
import 'package:assignment3/src/Login/OTPscreen.dart';
import 'package:assignment3/utils/snackbar_service.dart';

import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);
  static const routePath = "/signupsendotp";

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  late bool _isObsurce;

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneNoController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassController = TextEditingController();
  String result = '';
  // ignore: unused_field
  bool _isSigningIn = false;
  @override
  void initState() {
    super.initState();
    _isObsurce = true;
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // @override
  // void dispose() {
  //   nameController.dispose();
  //   emailController.dispose();
  //   super.dispose();
  // }

  // Future<void> _postData() async {
  //   final body = jsonEncode(<String, dynamic>{
  //     'name': nameController.text,
  //     'email': emailController.text,
  //     'phone': phoneNoController.text,
  //     'password': passwordController.text,
  //     // Add any other data you want to send in the body
  //   });
  //   try {
  //     final response = await http.post(
  //       Uri.parse(Endpoints.signupSendOTP),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: body,
  //     );
  //     print(body);

  //     if (response.statusCode == 201) {
  //       // Successful POST request, handle the response here
  //       final responseData = jsonDecode(response.body);
  //       setState(() {
  //         result =
  //             'ID: ${responseData['id']}\nName: ${responseData['name']}\nEmail: ${responseData['email']}';
  //       });
  //       print(result);
  //       print('success');
  //     } else {
  //       // If the server returns an error response, throw an exception
  //       throw Exception('Failed to post data');
  //     }
  //   } catch (e) {
  //     setState(() {
  //       result = 'Error: $e';
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final authControllerState = ref.watch(authControllerProvider);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _formKey,
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
                    'Sign Up To Ricoz ',
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
                    'Name',
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
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Color.fromARGB(104, 158, 158, 158)),
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Phone Number',
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
                      keyboardType: TextInputType.number,
                      controller: phoneNoController,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              color: Color.fromARGB(104, 158, 158, 158)),
                          hintText: 'Phone Number',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)))),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                      keyboardType: TextInputType.emailAddress,
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
                    height: 20,
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
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 4) {
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
                  const Text(
                    'Confirm Password',
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
                      controller: confirmPassController,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 4) {
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
                  Container(
                    decoration: const BoxDecoration(),
                    width: width,
                    height: 45,
                    child: !authControllerState
                        ? ElevatedButton(
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8))),
                            ),
                            onPressed: () {
                              if (passwordController.text ==
                                  confirmPassController.text) {
                                // if (_formKey.currentState!.validate()) {
                                ref
                                    .read(authControllerProvider.notifier)
                                    .register(
                                        email: emailController.text
                                            .trim()
                                            .toString(),
                                        phone: phoneNoController.text
                                            .trim()
                                            .toString(),
                                        name: nameController.text
                                            .trim()
                                            .toString(),
                                        password: passwordController.text
                                            .trim()
                                            .toString(),
                                        context: context);
                              } else {
                                print('error');
                              }
                            },
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => const OTPscreen(),
                            //     ));

                            child: Text(
                              'SignUp',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 0,
                                letterSpacing: -0.24,
                              ),
                            ))
                        : const CircularProgressIndicator(
                            color: Color.fromRGBO(150, 91, 165, 1),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
