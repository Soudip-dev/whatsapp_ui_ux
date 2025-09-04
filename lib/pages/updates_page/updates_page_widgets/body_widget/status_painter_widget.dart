

import 'package:flutter/material.dart';

class StatusPainterWidget extends CustomPainter {

  
  final double percentage;
  final Color color;

  StatusPainterWidget({required this.percentage, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke
    
      ..strokeCap = StrokeCap.round;

    double arcAngle = 2 * 3.1415926535 * percentage;

    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2),
      -3.1415926535 / 2, // Start angle (top)
      arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }


//   double thickness;
//   double numberOfSegments;
//   Color color;
//   // double radius;

//   StatusPainterWidget({required this.thickness, required this.numberOfSegments, required this.color, });

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = color
//       ..strokeWidth = thickness
//       ..style = PaintingStyle.stroke
      
//       ..strokeCap = StrokeCap.round;
     
//      final radius = size.width / 2;
//      final center = Offset(size.width / 2, size.height / 2);
// if( numberOfSegments>0){
//   for(int i=0;i<numberOfSegments;i++){
//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: radius),
//       ((1.5 * pi) + i *((2*pi)/numberOfSegments)),
//       (((2*pi)/numberOfSegments)- (pi /12)),
//       false,
//       paint,
    
//     );
//   }
// }else{
//   canvas.drawArc(
//     Rect.fromCircle(center: center, radius: radius),
//    (1.5*pi),
//     (2*pi),
//     false,
//     paint,
  
  
//   );
// }
    
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;

// }

}

