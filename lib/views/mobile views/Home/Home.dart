import 'package:flutter/material.dart';
import 'package:web_tt/commom%20widget/app_theme/app_colors.dart';


import '../../../commom widget/app_theme/app_background.dart';
import '../../../commom widget/menuscrol/Menu_Scroll.dart';

class Homemenu extends StatelessWidget {
  const Homemenu ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
       App_background(
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Column(
                        children: [
                          RichText(
                            text: const TextSpan (
                            children: [
                              TextSpan(text:'Pizza',style: TextStyle(color: primarycolor)),
                              TextSpan(text: 'rio',style: TextStyle(color: Colors.white)),
                              
                            ]
                          )),
                          const Text('PIZZA ONLINE DELIVERY',style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.payment,color: Colors.white,))
                    ],),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                         
                          children: const[
                            Text('Pizza',style: TextStyle(color: Colors.white)),
                             SizedBox(width: 10,),
                          Text('Burger',style: TextStyle(color: Colors.white)),
                              SizedBox(width: 10,),
                           
                            Text('Salad',style: TextStyle(color: Colors.white)),
                             SizedBox(width: 10,),
                           Text('Tacos',style: TextStyle(color: Colors.white)),
                           
                          
                    
                        ],),
                        Row(
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,)),
                                                 const SizedBox(width: 10,),
                    
                                               IconButton(onPressed: (){}, icon: const Icon(Icons.car_rental,color: Colors.white,))
                    
                            ],
                          ),
                    
                      ],
                    ),
                 SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                  children:const [
                      Menuscroll(),
                        Menuscroll(),
                          Menuscroll(),
                            Menuscroll(),
                  ],
              
                    
                  ),
                 )
                      
                ],),
              ),
              ), 
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('FOOD AND DRINKS'),
                    Row(
                      children:const[
                         Text('FOOD AND DRINKS'),
              
                      ]),
                     
                    
                  ],
                ),
              )
        ]),
      
    );
  }
}