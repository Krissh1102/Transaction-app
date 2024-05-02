import 'package:assignment3/src/Profile/ProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Image.asset('assets/images/Vector.png'),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          height: 80,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Home.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Message.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Chart.png')),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/avatar.png')),
              const SizedBox(
                width: 1,
              ),
            ],
          )),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Notification',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 250,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'No New Notifications',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'All caught up',
                    style: TextStyle(
                      color: Color(0xFF5D5D5D),
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
