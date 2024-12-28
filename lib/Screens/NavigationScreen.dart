import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ecommerce/Screens/CartScreen.dart';
import 'package:ecommerce/Screens/FavoritesScreen.dart';
import 'package:ecommerce/Screens/ProfileScreen.dart';
import 'package:ecommerce/Screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,

      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(onPressed: 
        (){}, 
        child:  Icon(Icons.qr_code, size: 30,),
        
        backgroundColor: Color(0xFFEF6969),
        foregroundColor: Colors.white,
        shape: const CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(

        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled
      
      
      ] ,
      height: 70,
      borderColor: Colors.grey.withOpacity(.3),
    inactiveColor: Colors.black.withOpacity(0.5),
    gapLocation: GapLocation.center,
    activeIndex: pageIndex,
    notchSmoothness: NotchSmoothness.softEdge,
    leftCornerRadius: 10,
    iconSize: 30,
    rightCornerRadius: 10,
    elevation: 10,
    onTap: (index){

      setState(() {
        pageIndex = index;
      });

    }
      
      
      ),
    );
  }
}