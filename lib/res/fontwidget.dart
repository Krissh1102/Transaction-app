import 'package:flutter/material.dart';

class PoppinsText extends StatelessWidget {
  const PoppinsText({
    Key? key,
    required this.text,
    this.size = 15,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black,
    this.align,
    this.softWrap,
    this.textOverflow,
    this.maxLines,
  }) : super(key: key);
  final TextAlign? align;
  final String text;
  final double? size;
  final FontWeight fontWeight;
  final Color color;
  final bool? softWrap;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      overflow: textOverflow,
      textAlign: align,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "Poppins",
      ),
    );
  }
}

class PlusJakartaText extends StatelessWidget {
  const PlusJakartaText({
    Key? key,
    required this.text,
    this.size = 15,
    this.fontWeight = FontWeight.w500,
    this.color = Colors.black,
    this.align,
    this.softWrap,
    this.textOverflow,
    this.maxLines,
  }) : super(key: key);
  final TextAlign? align;
  final String text;
  final double? size;
  final FontWeight fontWeight;
  final Color color;
  final bool? softWrap;
  final TextOverflow? textOverflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      overflow: textOverflow,
      textAlign: align,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: size,
        fontWeight: fontWeight,
        color: color,
        fontFamily: "PlusJakartaSans",
      ),
    );
  }
}
