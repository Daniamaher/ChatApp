import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({this.hintText,this.onChanged,this.obscureText=false}) ;
String? hintText;
Function(String)? onChanged;
bool? obscureText;
  @override

  Widget build(BuildContext context) {
    return  TextFormField(
                obscureText: obscureText!,
             validator: (data){
               if(data!.isEmpty ){
                return 'Field is required';
               }


             },
                   
                        onChanged:onChanged,
                    decoration: InputDecoration(
                      hintText:hintText ,
                      hintStyle: TextStyle(color:Colors.white),
                       enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),




                    border:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,)
                    ))
                  );
  }
}

 