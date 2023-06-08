import 'package:flutter/material.dart';
import 'package:web_tt/commom%20widget/app_theme/app_colors.dart';


class Signup_page extends StatelessWidget {
  const Signup_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        CustomPaint(
              painter: ShapesPainter(),
              child: SizedBox(height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 20,)),
                    const Text('Sign in',style: TextStyle(color: Colors.white,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,size: 20,))
                  ],
                ),
                const SizedBox(height: 50,),
              const Text('And ',style: TextStyle(color: Colors.white,fontSize: 50),),
              const Text('your email',style: TextStyle(color: Colors.white,),),

              ],),
              ), ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label:  Text('Email',style: TextStyle(color: Colors.black,),),
                    ),
                  ),
                ),
              ),

            
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 300,
          
          child: TextFormField(
                    decoration: const InputDecoration(
                      
                      label:  Text('Lastname',style: TextStyle(color: Colors.black,),),
                    ),
                  ),
        ),
      ),
             
              
              const SizedBox(height:20),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: primarycolor), 
                  child:  const Center(child: Text('Continue')),),
              ),
    
             RichText(text: const TextSpan(children:[
              TextSpan(
                text: "Already have an account? "
              ),
              TextSpan(text: 'Sign In',style: TextStyle(color: primarycolor)),

             ]))
        ],
      ),
    );
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