import 'package:assignment3/models/appdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            padding:
                const EdgeInsets.only(bottom: 20, top: 20, left: 20, right: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 82,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Image.asset('assets/images/Vector.png'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset('assets/images/avatar.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                      filled: true,
                      prefixIcon: const Icon(Icons.search_outlined),
                      hintText: 'Search Transaction',
                      hintStyle: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(children: [
                  Expanded(
                    child: Text(
                      'This Month',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF666666),
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Text(
                    'Refresh at Today,11:20',
                    style: GoogleFonts.inter(
                      color: const Color(0xFF666666),
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ))
                ]),
                const SizedBox(
                  height: 30,
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
                                        width: 150,
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
                                            Text(
                                                Appdata
                                                    .appdata[index].occuption,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                const Divider(),
                              ]);
                        },
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
