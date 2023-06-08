import 'package:flutter/material.dart';


class App_background extends StatelessWidget {
  final Widget child;
  const App_background({super.key,required this.child});


  @override
  Widget build(BuildContext context) {
    return 
        CustomPaint(
              painter: ShapesPainter(),
              child: SizedBox(height: 300,
              child:child,
               ),);
  }
}

              
            
      
           

const double _kCurveHeight = 35;

class ShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final p = Path();
    p.lineTo(0, size.height - _kCurveHeight);
    p.relativeQuadraticBezierTo(size.width / 2, 2 * _kCurveHeight, size.width, 0);
    p.lineTo(size.width, 0);
    p.close();

    canvas.drawPath(p, Paint()..color = Colors.black.withOpacity(0.9));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}