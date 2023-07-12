import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/home_screen.dart';

class NavbarRoot extends StatefulWidget {
  const NavbarRoot({super.key});

  @override
  State<NavbarRoot> createState() => _NavbarRootState();
}

class _NavbarRootState extends State<NavbarRoot> {

int _selectindex= 0;
final screens =[
  HomeScreen(),
  Container(),
  Container(),
  Container()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectindex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:Colors.black,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectindex,
          onTap: (index){
            setState(() {
              _selectindex=index;
            });
          },
          items:const  [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Home" ),
             BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Home" ),
              BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Home" ),
               BottomNavigationBarItem(icon: Icon(Icons.home,),label:"Home" )
          ],
          ),
          
      ),
    );
  }
}