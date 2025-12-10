import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:NavigationBar(
        destinations: [
          Container(color: Colors.redAccent,),
           Container(color: Colors.blueAccent,),
            Container(color: Colors.tealAccent,),
             Container(color: Colors.yellowAccent,),
        ])
    );
  }
}