import 'package:flutter/material.dart';

class CustomRouteTransition extends PageRouteBuilder {
  final Widget page;
  final Offset beginOffset;

  CustomRouteTransition({required this.page, required this.beginOffset})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = beginOffset;
            var end = Offset.zero;
            var curve = Curves.easeInOut;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        );
}
