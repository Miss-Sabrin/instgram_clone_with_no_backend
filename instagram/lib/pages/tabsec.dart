import 'package:flutter/material.dart';
import 'package:instagram/model/profile_data.dart';
import 'package:instagram/pages/search.dart';

class TabSec extends StatelessWidget {
  const TabSec({super.key});

  @override
  Widget build(BuildContext context) {

    ///melaha user profile oo taps waye qebtan 🤞
   
   return Scaffold(
      body:   GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1
        ),
        itemCount: UserData.users.length,
        itemBuilder: (context, index) {
          return showGrid(
            usergrid: UserData.users[index],


          );
        },
        
       ),
    );
  }
}