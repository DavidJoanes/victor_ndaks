import 'package:flutter/material.dart';

// import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return SizedBox(
          width: size.width < 700 ? size.width * 0.8 : size.width * 0.4,
          child: Text(
          'I\'m capable of creating mindblowing cross-platform applications, designing and implementing cybersecurity measures to safeguard your infrastructure and products.',
          maxLines: size.width < 700 ? 4 : 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        ),
        );
        // Text(
        //   'I\'m capable of creating mindblowing cross-platform applications, designing${Responsive.isLargeMobile(context) ? '\n' : ''} and implementing ${!Responsive.isLargeMobile(context) ? '\n' : ''}cybersecurity measures to safeguard your infrastructure and products.',
        //   maxLines: 2,
        //   overflow: TextOverflow.ellipsis,
        //   style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        // );
      },
    );
  }
}