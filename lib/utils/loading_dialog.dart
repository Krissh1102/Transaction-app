import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingDialog extends StatelessWidget {
  final String? message;
  const LoadingDialog({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Your regular content goes here
        // Loading overlay
        ModalBarrier(
          color: Colors.transparent,
          dismissible: false,
          key: key,
        ),
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitThreeBounce(
              color: Color.fromRGBO(150, 91, 165, 1),
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
