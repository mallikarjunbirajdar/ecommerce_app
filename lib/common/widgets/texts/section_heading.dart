import 'package:flutter/material.dart';

class Usectionheading extends StatelessWidget {
  const Usectionheading({
    super.key, required this.title, this.buttonTitle="View all", this.onPressed,
  });


  final String title;
  final buttonTitle;
  final VoidCallback ? onPressed;
  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.headlineSmall),
        TextButton(onPressed: (){}, child: Text( buttonTitle ))
    
      ],
    );
  }
}