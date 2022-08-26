import 'package:create11/constants/strings.dart';
import 'package:create11/views/screens/account/account.dart';
import 'package:create11/views/screens/home/home.dart';
import 'package:create11/views/screens/more/more_page.dart';
import 'package:create11/views/screens/my_contest/mycontest.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const MyContestPage(),
    const AccountPage(),
    const MorePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double? deviceHeight = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
               icon: _selectedIndex == 0
                    ? Icon(
                        Icons.home_filled,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      )
                    : Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      ),
              label: Strings.home,
              backgroundColor: Colors.redAccent
          ),
          BottomNavigationBarItem(
               icon: _selectedIndex == 1
                    ? Icon(
                        Icons.emoji_events_rounded,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      )
                    : Icon(
                        Icons.emoji_events_outlined,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      ),
              label: Strings.myContests,
              backgroundColor: Colors.redAccent
              ),
          BottomNavigationBarItem(
               icon: _selectedIndex == 2
                    ? Icon(
                        Icons.person,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      )
                    : Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      ),
              label: Strings.account,
              backgroundColor: Colors.redAccent
              ),
          BottomNavigationBarItem(
               icon: _selectedIndex == 3
                    ? Icon(
                        Icons.more_horiz_rounded,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      )
                    : Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                        size: deviceHeight * 3.8,
                      ),
              label: Strings.more,
              backgroundColor: Colors.redAccent
              ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}