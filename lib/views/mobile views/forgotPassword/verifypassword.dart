
import 'package:flutter/material.dart';

import 'package:web_tt/commom%20widget/app_theme/app_background.dart';
import 'package:web_tt/commom%20widget/app_theme/app_colors.dart';
import '../../../commom widget/Verificationbox/Verificationbox.dart';
import '../Sign up page/signup.dart';

class Verifypassword extends StatelessWidget {
  const Verifypassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       App_background(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back,color: Colors.white,size: 20,)),
                    const Text('Verify Code',style: TextStyle(color: Colors.white,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,size: 20,))
                  ],
                ),
                const SizedBox(height: 50,),
              const Text('Enter 4 digit code',
              style: TextStyle(color: Colors.white,fontSize: 50),),

              const Text('We have sent a verification code\n into your Email',
              style: TextStyle(color: Colors.white,),),

              ],),
              ), 
               const SizedBox(width: 10,),

             const Text('4- Digit-code'),
              const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:const [
                       
             Verificationbox(),
             SizedBox(width: 10,),
                 Verificationbox(),
                  SizedBox(width: 10,),
                  Verificationbox(),
                   SizedBox(width: 10,),
                  Verificationbox(),
              
              
             ],),

            
     
             const Text('Change Email',style: TextStyle(),textAlign: TextAlign.start,),
             
             const Text('Send Code Again'),
          
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Signup_page ()),
  );
          },
                style: ElevatedButton.styleFrom(backgroundColor: primarycolor), 
                  child:  const Center(child: Text('Reset Password')),),
              ),
    
           
        ],
      ),
    );
  }
}
