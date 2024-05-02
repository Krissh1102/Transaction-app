import 'package:assignment3/models/entry.dart';
import 'package:assignment3/src/Filter/FilterScreen.dart';
import 'package:assignment3/src/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddCustomerScreen extends StatefulWidget {
  const AddCustomerScreen({super.key});

  @override
  State<AddCustomerScreen> createState() => _AddCustomerScreenState();
}

class _AddCustomerScreenState extends State<AddCustomerScreen> {
  String? gender;
  final _formkey = GlobalKey<FormState>();

  String formattedDate = DateFormat.yMd().format(DateTime.now());

  // ignore: unused_field
  var _enteredemail = '';
  // ignore: unused_field
  var _enteredphone = '';
  // ignore: unused_field
  var _enteredname = '';

  void _saveItem() {
    if (_formkey.currentState!.validate()) {
      _formkey.currentState!.save();
      Navigator.of(context).pop(Entry(
          email: _enteredemail,
          id: DateTime.now().toString(),
          companyName: '',
          date: DateTime.now().toString(),
          name: _enteredname,
          number: _enteredphone,
          occuption: 'bussiness'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          'Ricoz ',
          style: TextStyle(
            color: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Customer Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Customer Type',
                style: TextStyle(
                  color: Color(0xFF525151),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(1),
                      activeColor: Colors.grey,
                      title: const Text(
                        'Business',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      value: "Bussiness",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile(
                      contentPadding: const EdgeInsets.all(1),
                      activeColor: Colors.grey,
                      title: const Text(
                        'Individual',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      value: "Individual",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Salution'),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'FirstName'),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        decoration: const InputDecoration(hintText: 'LastName'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Company Name'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'This value cannot be null';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: 'Customer Display Name *'),
                        onSaved: (value) {
                          _enteredname = value!;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null) {
                            return 'This value cannot be null';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(hintText: 'Email *'),
                        onSaved: (value) {
                          _enteredemail = value!;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 190,
                          child: TextFormField(
                            onSaved: (value) {
                              _enteredphone = value!;
                            },
                            validator: (value) {
                              if (value == null) {
                                return 'This value cannot be null';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: 'Phone *',
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: 177,
                            height: 39,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFE2E2E2),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 200,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF878787)),
                            onPressed: _saveItem,
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
