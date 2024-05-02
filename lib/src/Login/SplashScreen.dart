import 'package:assignment3/Authentication/controller/controller/init_controller.dart';
import 'package:assignment3/Authentication/controller/providers/common_providers.dart';
import 'package:assignment3/src/Login/NewUserScreen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});
  static const routePath = "/splash";
  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      ref.read(initControllerProvider).initUserAndToken().then((value) {
        final token = ref.read(authTokenProvider);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NewUserScreen()));

        // if (token == null) {
        //   context.pushReplacement(WelcomeScreen.routePath);
        // } else {
        //   if (role == "influencer") {
        //     context.pushReplacement(HomeScreen.routePath);
        //   } else {
        //     context.pushReplacement(WelcomeScreen.routePath);
        //   }
        // }
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedRotation(
              turns: 70,
              duration: const Duration(minutes: 10),
              child: DottedBorder(
                color: Colors.grey,
                borderType: BorderType.Circle,
                dashPattern: const [10, 15],
                child: Container(
                  width: 323.06,
                  height: 323.06,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                ),
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
                    image:
                        AssetImage('assets/images/NewUserScreen/Photo 2.png'),
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
                    image:
                        AssetImage('assets/images/NewUserScreen/Photo 3.png'),
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
                    image:
                        AssetImage('assets/images/NewUserScreen/Photo 1.png'),
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
                    image:
                        AssetImage('assets/images/NewUserScreen/Photo 4.png'),
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
                    decoration: const BoxDecoration(shape: BoxShape.circle),
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
                  image: AssetImage('assets/images/NewUserScreen/ricoz 1.png'),
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
    );
  }
}
