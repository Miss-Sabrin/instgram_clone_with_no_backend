import 'package:flutter/material.dart';
import 'package:instagram/model/profile_data.dart';
import 'package:instagram/pages/home.dart';
import 'package:instagram/pages/tabsec.dart';
import 'package:instagram/utils/mythemes.dart';

class UserProfiles extends StatelessWidget {
  const UserProfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(children: [
          Text("sabrin omar "),
          Icon(Icons.verified,color: Colors.blue,)
        ]),
        
        actions: [
          Icon(Icons.add),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.menu),
          )

      ]),
      

      //type body

      body: DefaultTabController(
        length: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 43,
                        backgroundColor: Colors.grey,
                        child: CircleAvatar(
                          radius: 42,
                        backgroundImage: AssetImage('assets/images/4.jpg'),
                      ),
                      ),
                    ],
                  ),
      
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('133',
                            style: TextStyle(fontSize: 16),),
                            Text('post',style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('133k',
                            style: TextStyle(fontSize: 16),),
                            Text('follower',style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Text('133M',
                            style: TextStyle(fontSize: 16),),
                            Text('following',style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
      
                      
                    ],
                  )
                ],
              ),
            ),
      
            //type information person....?
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Rina omar ❤ \nFlutter Devloper\nDigital Creator',
              
              style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Icon(Icons.link),
                SizedBox(width: 10,),
                Text("saabsiman008@gmail.com",
                style: TextStyle(fontSize: 16,color: Colors.blue),
                )
              ],),
            ),
      
            Container(
              decoration: BoxDecoration(
                color: buttonColor,borderRadius: BorderRadius.circular(20)
              ),
              height: 40,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('personal information',style: TextStyle(fontSize: 18),),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration
                    (color: buttonColor,
                    borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,
                    child: Center(child: Text('edit prifile',style: TextStyle(fontSize: 15),)),
                  ),
                ),
                 SizedBox(width: 10,),
      
                 Expanded(
                  child: Container(
                    decoration: BoxDecoration
                    (color: buttonColor,
                    borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,
                    child: Center(child: Text('share profile',style: TextStyle(fontSize: 15),)),
                  ),
                ),
                SizedBox(width: 10,),
                 Expanded(
                  child: Container(
                    decoration: BoxDecoration
                    (color: buttonColor,
                    borderRadius: BorderRadius.circular(20)
                    ),
                    height: 40,
                    child: Center(child: Text('contact',style: TextStyle(fontSize: 15),)),
                  ),
                )
              ],
            ),
               SizedBox(height: 15,),

               //type of ustory profile...

                SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: UserData.users.length,
                itemBuilder: (context, index) {
                  return ShowItem(userStory: UserData.users[index],);
                },
                
                ),
            ),

            TabBar(tabs: [
              Icon(Icons.dashboard),
              Icon(Icons.video_call),
              Icon(Icons.shop),
              Icon(Icons.account_box)
      
            ]),
            Expanded(
              child: TabBarView(children:[
                   TabSec(),
                   TabSec(),
                   TabSec(),
                   TabSec(),
            
              ]
                     
              
              ),
            )
          ],
        ),

        
      ),

       
    );



  }
}