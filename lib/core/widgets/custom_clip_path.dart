import 'package:flutter/material.dart';

class CustomClipPath extends StatelessWidget {
  final String title;

  const CustomClipPath({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        color: Colors.purple,
        height: 200,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    Path path = Path();
    path.lineTo(0, h * 0.75);
    path.quadraticBezierTo(w * 0.20, h * 0.65, w * 0.50, h * 0.75);
    path.quadraticBezierTo(w * 0.75, h * 0.85, w, h * 0.75);
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
