import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Verificationbox extends StatelessWidget {
  const Verificationbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height:68 ,
                width:64,
                child: TextFormField(
                  onChanged:  (value){
                    if(value.length==1){
                      FocusScope.of(context).nextFocus();
                    }
                  },

                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,],
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      
                    ),
                    hintText: '0',
                    
                  ),
                ),
              );
  }
}