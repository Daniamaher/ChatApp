/*import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        ),
                       // color: Colors.white,
                        width:double.infinity,
                        height:60,
                        child:Center(child: Text('LOGIN'))),
  }
}

*/

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
   CustomButton({this.onTap,required this.text}) ;
String text;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}



