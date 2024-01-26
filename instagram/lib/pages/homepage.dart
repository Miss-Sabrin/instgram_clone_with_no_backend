import 'package:flutter/material.dart';
import 'package:instagram/pages/addpage.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/reels.dart';
import 'package:instagram/pages/search.dart';
import 'package:instagram/pages/user_profile.dart';
import 'package:instagram/utils/mythemes.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int pgindex=0;
  
  void selindex(int index){
    setState(() {
      
    });
    pgindex=index;
    
  }

  final List pages=[

    Home(),
    Search(),
    AddPhoto(),
    ReelsPage(),
    UserProfiles()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
        onTap: selindex,
        currentIndex: pgindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: iconcolor,
              
              ),
              label: 'home'
              ),
               BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: iconcolor,
              
              ),
              label: 'search'
              ),

               BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: iconcolor,
              
              ),
              label: 'add'
              ),
               BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call_outlined,
              color: iconcolor,
              
              ),
              label: 'Reels'
              ),
               BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: iconcolor,
              
              ),
              label: 'profile'
              ),
        ],
      ),
      body: pages[pgindex]
    );
  }
}