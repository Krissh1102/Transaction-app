import 'package:assignment3/models/appdata.dart';
import 'package:assignment3/models/entry.dart';
import 'package:assignment3/src/AddCustomer/AddCustomerScreen.dart';
import 'package:assignment3/src/Filter/FilterScreen.dart';
import 'package:assignment3/src/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final List<Entry> _displayPayment = [];

  void _addItem() async {
    final newItem = await Navigator.of(context).push<Entry>(
        MaterialPageRoute(builder: (ctx) => const AddCustomerScreen()));
    if (newItem == null) {
      return null;
    }

    setState(() {
      _displayPayment.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _addItem();
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 95,
                ),
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
                GestureDetector(
                  onTap: () {
                    Get.to(() => const ProfileScreen(),
                        transition: Transition.upToDown);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/images/avatar.png'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      right: 20, left: 15, top: 8, bottom: 8),
                  width: 180,
                  height: 140,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '75',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'Total Clients',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 152,
                        height: 16,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFD9D9D9),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 16,
                              decoration: ShapeDecoration(
                                color: const Color(0xFF41D27B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      right: 5, left: 15, top: 8, bottom: 8),
                  width: 180,
                  height: 140,
                  decoration: ShapeDecoration(
                    color: const Color(0x3F878787),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '\$140',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'Total Collection',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 152,
                        height: 16,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 60,
                              height: 16,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFE39CFC),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'History',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Form(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                    filled: true,
                    disabledBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search Transaction'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TransactionList(displayPayment: _displayPayment)
          ]),
        ),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  const TransactionList({
    super.key,
    required List<Entry> displayPayment,
  }) : _displayPayment = displayPayment;

  final List<Entry> _displayPayment;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _displayPayment.length,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _displayPayment[index].name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  height: 0.09,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(_displayPayment[index].occuption,
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
                                _displayPayment[index].date,
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
                            _displayPayment[index].number,
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
                            _displayPayment[index].email,
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
                    color: Colors.white,
                  ),
                ]);
          },
        ),
      ),
    );
  }
}
