import 'package:flutter/material.dart';
import 'package:web_tt/commom%20widget/app_theme/app_background.dart';
import 'package:web_tt/commom%20widget/app_theme/app_colors.dart';
import 'package:web_tt/views/mobile%20views/forgotPassword/verifypassword.dart';


class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

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
                    const Text('Forgot Password',style: TextStyle(color: Colors.white,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,size: 20,))
                  ],
                ),
                const SizedBox(height: 50,),
              const Text('We need',style: TextStyle(color: Colors.white,fontSize: 50),),
              const Text('Enter the email address to send \nyou password reset',style: TextStyle(color: Colors.white,),),

              ],),
              ), 

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

            
     
          
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Verifypassword ()),
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
