import 'package:flutter/material.dart';
import 'package:instagram/model/profile_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      title: Text('Instagram',
      style: TextStyle(
        fontFamily: 'Fontspring-DEMO-blue_vinyl_regular_ps_ot',
        fontSize: 30,
        fontWeight: FontWeight.w500,

      ),
      ),
      actions: [
        Row(
          children: [ 
            Icon(Icons.favorite_border_outlined),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.chat_bubble),
            )
          ],
        )
      ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {

                  // showBottomSheet(context: context, builder: (BuildContext context){
                  // return StoryView(story)
                  // };
                print('test');
              },
              child: SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: UserData.users.length,
                  itemBuilder: (context, index) {
                    return ShowItem(userStory: UserData.users[index],);
                  },
                  
                  ),
              ),
            ),
            
            ///post data
              SizedBox(
              height: 1000,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: UserData.users.length,
                itemBuilder: (context, index) {
                  return ShowPost(userPost: UserData.users[index],);
                },
                
                ),
            )
          ],
        ),
      ),
    );
  }
}

class ShowItem extends StatelessWidget {
  final UserProfile userStory;
  const ShowItem({super.key,required this.userStory});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 04,vertical: 10),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(userStory.url),
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 04,vertical: 10),
          child: Text(userStory.name,
          style: TextStyle(fontSize: 16),
          ),
        )
      ],
    );
  }
}

///post🤞

class ShowPost extends StatefulWidget {
  final UserProfile userPost;
  const ShowPost({super.key,required this.userPost});

  @override
  State<ShowPost> createState() => _ShowPostState();
}

class _ShowPostState extends State<ShowPost> {
  bool isClicked=false;
  void fav(){
    setState(() {
      isClicked=!isClicked;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(widget.userPost.url),
                
                  ),
                ),
                Text(widget.userPost.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
              ],
            ),
            //type meunu Tap cliks are show four items
             Row(
          children: [
            InkWell(
              onTap: (){
                showBottomSheet(context: context, builder: (BuildContext context){
                  return Container(
                    
                    height: 150,
                   
                    
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [
                        Column(
                          children: [
                            Container(
                               decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1,color: Colors.grey),
                      ),
                      child: Padding(padding: const EdgeInsets.all(8.0),
                      child:Icon(Icons.link_off,color: Colors.blue,) ,
                      ),
                      
                            ),
                            Text('links',style: TextStyle(fontSize: 20),)
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                               decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1,color: Colors.grey),
                      ),
                      child: Padding(padding: const EdgeInsets.all(8.0),
                      child:Icon(Icons.share,color: Colors.blue,) ,
                      ),
                      
                            ),
                            Text('share',style: TextStyle(fontSize: 20),)
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                               decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1,color: Colors.grey),
                      ),
                      child: Padding(padding: const EdgeInsets.all(8.0),
                      child:Icon(Icons.qr_code ,color: Colors.blue,) ,
                      ),
                      
                            ),
                            Text('QR code',style: TextStyle(fontSize: 20),)
                          ],
                        ),
                         Column(
                          children: [
                            Container(
                               decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1,color: Colors.grey),
                      ),
                      child: Padding(padding: const EdgeInsets.all(8.0),
                      child:Icon(Icons.save_alt_outlined,color: Colors.blue,) ,
                      ),
                      
                            ),
                            Text('Downlod',style: TextStyle(fontSize: 20),)
                          ],
                        ),
                    
                    
                    
                    
                        
                    
                      ]),
                    ),
                  );

                });
              },
              
              child: Icon(Icons.menu))

            // end Menu tab...😁
          ],
        )
          ],
        ),
        SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(widget.userPost.url)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  
                  InkWell(
                    onTap: fav,
                    child: isClicked
                    
                    ?Icon(Icons.favorite_border_outlined,
                    size: 35,
                    )
                    :Icon(Icons.favorite,
                    color: Colors.red,
                    size: 35,)
                  ),
                  SizedBox(width: 10, ),
                   Icon(Icons.comment,
                  size: 35,
                  ),
                  SizedBox(width: 10, ),
        
                  
                   Icon(Icons.share_rounded,
                  size: 35,
                  ),
        
                ],
              ),
              
                   Icon(Icons.save_sharp,
                  size: 35,
                   )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('123 Like',style: TextStyle(fontSize: 14),),
                ],
              ),
              SizedBox(height: 10,),

              Row(
                children: [
                  Text('ikrana  hhh naa wa shidan tahy ku soco  ')
                ],
              ),
                            SizedBox(height: 10,),

              Row(
                children: [
                  Text('view all 345 comments',style: TextStyle(color: Colors.grey),),
                ],
              ),
                            SizedBox(height: 10,),

              Row(
                children: [
                  Row(children: [
                    CircleAvatar(
                      
                       child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/5.jpg'),
            
            
          ),
                    )
                  ],),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('add comments ',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight: FontWeight.w300),),
                   )
                ],
              ),
             
            ],
          ),
        )
       
      ],
    );
  }
}