// import 'package:flutter/material.dart';

// // class TapSearch extends StatefulWidget {
// //   const TapSearch({super.key});

// //   @override
// //   State<TapSearch> createState() => _TapSearchState();
// // }

// // class _TapSearchState extends State<TapSearch> {
// //   final List<Map <String,dynamic> >searchUser=[
// //     {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     },
// //      {
// //       'profileImageeUrl':'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&q=80&w=387&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
// //       'username':"sabrin ",
// //       'fullname':"sabrin cumar"
// //     }

// //   ];
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(appBar: AppBar(
// //       backgroundColor: Colors.white,
      
// //       title: SizedBox(
// //         height: 40,
// //         child: TextField(
// //           decoration: InputDecoration(
// //             border: OutlineInputBorder(
// //               borderRadius: BorderRadius.circular(8),
// //               borderSide: BorderSide.none),
// //             filled: true,
// //             hintText: 'search',
// //             hintStyle: TextStyle(color: Colors.grey),
// //             fillColor: Color.fromARGB(255, 232, 230, 230),
// //             prefixIcon: Icon(
// //               Icons.search,
// //               color: Colors.grey,
              
// //               )
            
// //           ),
// //         ),
// //       ),


// //     ),

// //     body: ListView.builder(
// //       itemCount: searchUser.length,
// //       itemBuilder: (context,index){
// //         var data=searchUser[index];
// //         return ListTile(
// //           leading: CircleAvatar(
// //             radius: 30,
// //             backgroundImage: NetworkImage(data['profileImageeUrl'])
// //           ),
// //           title: Text(data['username']),
// //           subtitle: Text(data[ 'fullname']),
// //         );
// //       }
      
//       class Question extends StatefulWidget {
//   Question({Key? key}) : super(key: key);

//   @override
//   _QuestionState createState() => _QuestionState();
// }

// class _QuestionState extends State<Question> {
//   String text = '';
//   bool shouldDisplay = false;

//   @override
//   Widget build(BuildContext context) {
//     return
//      Column(
//       children: [
//         Center(
//           child: TextField(
//             onChanged: (value) {
//               setState(() {
//                 text = value;
//               });
//             },
//           ),
//         ),
//         TextButton(onPressed: () {
//           setState(() {
//             shouldDisplay = !shouldDisplay;
//           });
//         }, child: Text('Submit')),
//         shouldDisplay ? Text(text) : Spacer()
//       ],
//     );
//   }
// }
      
// //       ),
    
// //     );
// //   }
// // }




