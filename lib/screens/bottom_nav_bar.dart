import 'package:d/const.dart';
import 'package:d/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'category_screen.dart';
import 'dd_club.dart';
import 'item_screen.dart';
import 'menu.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeScreen(),
    const CategoryScreen(),
    const DdClub(),
    const CartScreen(),
    const Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          color: lightColor,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: lightColor,
            currentIndex: _currentIndex,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: buttonColor,
            unselectedItemColor: lightGreyColor,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/icons/home.png",color: _currentIndex == 0 ? buttonColor : lightGreyColor,),
                label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/categ.png",color: _currentIndex == 1 ? buttonColor : lightGreyColor),
                  label: "Category"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/dd.png",color: _currentIndex == 2 ? buttonColor : lightGreyColor),
                  label: "DD Club"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/cart.png",color: _currentIndex == 3 ? buttonColor : lightGreyColor),
                  label: "Cart"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/icons/menu.png",color: _currentIndex == 4 ? buttonColor : lightGreyColor),
                  label: "Menu"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
