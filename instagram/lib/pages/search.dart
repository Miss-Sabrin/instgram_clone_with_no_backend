import 'package:flutter/material.dart';
import 'package:instagram/model/profile_data.dart';
import 'package:instagram/widgets/search_user.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      



  
  appBar: AppBar(
      backgroundColor: Colors.black,
      
      title: SizedBox(
      
        
        height: 40,
        child: GestureDetector(
          onTap: (){
            TapSearch();
          },
          child: TextField(
            
            decoration: InputDecoration(
              border: OutlineInputBorder(
                
                borderRadius: BorderRadius.circular(8),
                
                borderSide: BorderSide.none),
              filled: true,
              
              hintText: 'search',
              hintStyle: TextStyle(color: Colors.grey),
              fillColor:   Colors.grey.withOpacity(0.3),
        
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
                
                )
              
            ),
          ),
        ),
      ),


    ),



      // appBar: AppBar(
      //   backgroundColor: Colors.black,
      //   title: ClipRRect(borderRadius: BorderRadius.circular(20),
      //   child: InkWell(
      //     onTap: () {

      //     },
      //     child: Container(
      //       height: 40,
      //       color: Colors.grey.withOpacity(0.3),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text('search...'),
      //         ),
      //         Icon(Icons.search_off)
      //       ]),
      //     ),
      //   ),
      //   ),
      // ),


      ///body part🤞
       body: GridView.builder(
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

class showGrid extends StatelessWidget {
  final UserProfile usergrid;
  const showGrid({super.key,required this.usergrid});

  @override
  Widget build(BuildContext context) {
    return Image(
      
      fit: BoxFit.cover,
      height: 200,
      width: 200,
      image: AssetImage(usergrid.url),
      
    );
  }
}