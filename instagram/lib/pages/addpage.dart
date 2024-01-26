import 'package:flutter/material.dart';
import 'package:instagram/model/profile_data.dart';
import 'package:instagram/pages/search.dart';


class AddPhoto extends StatefulWidget {
  const AddPhoto({super.key});

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {

  List <Map<String , String>> listPosts=[
  {
      'image': 'images/post1.jpeg',


  },
  {
      'image': 'images/post2.webp',


  },
  {
      'image': 'images/post3.jpeg',


  },
  {
      'image': 'images/post4.webp',


  },
  {
      'image': 'images/post5.webp',


  }






];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        
        child:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                Row(
                  children: [
                    Icon(Icons.cancel_outlined,size: 35,color: Colors.white,),
                    SizedBox(width: 120,),
                    Text('New post',style: TextStyle(fontSize: 20,color: Colors.white),)
              
                  ],
              
                ),
                Text('Next',style: TextStyle(fontSize: 25,color: Colors.blue),),
                     
                    ],
                    
                    
                    ),
                    
              ),
              Column(children: [
                Image.asset('assets/images/1.jpeg',
                width: 500,
                height: 400,
             fit:BoxFit.cover,
                )
               
              ],),
              //SizedBox(height: 10, width: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Row(
                      
                      children: [
                      Text('Recents',style: TextStyle(fontSize: 20,color: Colors.grey),),
                      SizedBox(width: 5,),
                      Icon(Icons.arrow_back)
                  // Image(image: AssetImage("assets/down-arrow.png"),width: 20, color: Colors.grey,)
                    ],
                    
                    ),
                    
                  ),
                  
        
                  Icon(Icons.select_all_outlined,color: Colors.white,),
                  Icon(Icons.camera_alt_rounded,color: Colors.white,),
        
        
                ],
              ),
        
              Column(
                children: [
            
                   
                      Container(
                  decoration: BoxDecoration(color: Colors.grey[800]),
        
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            
                            children: [
                               Expanded(child: Text("you've given instagrm access to slecet \n number  of photes and vidio",
                           style: TextStyle(color: Colors.white,fontSize: 16),)),
                           TextButton(onPressed: (){}, child: Text('Manage',style: TextStyle(color: Colors.white),))
                            ],
                            
                                            
                          ),
                        ),
                      ),
                    
                         Column(
                          children: [
                         
        
                          //         GridView.builder(
                          //   shrinkWrap: true,
                          //   physics: const NeverScrollableScrollPhysics(),
                          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: 3,
                          //     childAspectRatio: 1/1,
                          //     crossAxisSpacing: 2,
                          //     mainAxisExtent: 100,
                          //   ),
                          //   itemBuilder: (  context,  index)  {
                          //     final post =listPosts[index];
        
                          //     return Container(
                                
                          //       color: Colors.grey[600],
                          //       child: Image.asset(
                          //         post['image']!,
                          //         fit: BoxFit.cover,
                          //       ),
                          //     );
        
                          //   },
        
                            
                          //    itemCount: listPosts.length,
        
                              
                            
                          // ),


                          ///////////////////
                          ///
                          ///
                          ///
                           GridView.builder(
                           shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
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
                                
                               
                               
                       
                                
                                
                             
                              ],
                            ),
                          
                        
                      
                    
                  
                ],
              )
        
             
        
              
        
        
            ],
            
          ),
        ),
      
      
      ),
      
    );

  }
}