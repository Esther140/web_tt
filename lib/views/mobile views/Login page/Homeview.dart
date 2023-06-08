import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:web_tt/commom%20widget/app_theme/app_background.dart';
import 'package:web_tt/commom%20widget/app_theme/app_colors.dart';
import 'package:web_tt/views/mobile%20views/forgotPassword/forgotPassword.dart';
import '../../../commom widget/app_theme/app_text.dart';
import '../Sign up page/signup.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

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
                    const Text('Sign in',style: TextStyle(color: Colors.white,),),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert,color: Colors.white,size: 20,))
                  ],
                ),
                const SizedBox(height: 50,),
              const Text('Hi',style: TextStyle(color: Colors.white,fontSize: 50),),
              const Text('Sign in to continue',style: TextStyle(color: Colors.white,),),

              ],),
              ), 

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      label:  Text('First Name',style: TextStyle(color: Colors.black,),),
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
                      
                      label:  Text('Password',style: TextStyle(color: Colors.black,),),
                    ),
                  ),
        ),
      ),
             
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: InkWell(onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const forgotPassword()));
                },
                  child: const app_text(text: 'I forgot password?')),
              ),
              const SizedBox(height:20),
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
                  child:  const Center(child: Text('Login')),),
              ),
    
             RichText(text: TextSpan(children: [
              const TextSpan(
                text: "Don't have an account? "
              ),
              TextSpan(text: 'Sign up',style: const TextStyle(color: primarycolor),
              
              recognizer: TapGestureRecognizer()..onTap = () =>const Signup_page(),)

             ]))
        ],
      ),
    );
  }
}
