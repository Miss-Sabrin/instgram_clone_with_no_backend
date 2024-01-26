import 'package:flutter/material.dart';
import 'package:instagram/model/search_data.dart';

class TapSearch extends StatefulWidget {
  const TapSearch({super.key});

  @override
  State<TapSearch> createState() => _TapSearchState();
}

class _TapSearchState extends State<TapSearch> {
  List <User> _user=[
    User('ikran', '@ikra', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=600',false),
        User('sabrin ', '@elliana', 'https://images.unsplash.com/photo-1504735217152-b768bcab5ebc?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=0ec8291c3fd2f774a365c8651210a18b', false),
    User('nimco ', '@kayley', 'https://images.unsplash.com/photo-1503467913725-8484b65b0715?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=cf7f82093012c4789841f570933f88e3', false),
    User('xasan ', '@kathleen', 'https://images.unsplash.com/photo-1507081323647-4d250478b919?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=b717a6d0469694bbe6400e6bfe45a1da', false),
    User('xawa ', '@kathleen', 'https://images.unsplash.com/photo-1502980426475-b83966705988?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=ddcb7ec744fc63472f2d9e19362aa387', false),
    User('khadro ', '@mikayla', 'https://images.unsplash.com/photo-1541710430735-5fca14c95b00?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('ahmed ', '@kiersten', 'https://images.unsplash.com/photo-1542534759-05f6c34a9e63?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('Carys ', '@metz', 'https://images.unsplash.com/photo-1516239482977-b550ba7253f2?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('maahir ', '@schmidt', 'https://images.unsplash.com/photo-1542973748-658653fb3d12?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('sabka ', '@clyde', 'https://images.unsplash.com/photo-1569443693539-175ea9f007e8?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&ixid=eyJhcHBfaWQiOjE3Nzg0fQ', false),
    User('rina ', '@mikayla', 'https://www.pexels.com/photo/person-holding-camera-1704488/', false)
       


  ];
  List<User> _foundedUser=[];

  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _foundedUser=_user;
    });
    super.initState();
  }
  onSearch(String search){
   // print(search);
   setState(() {
     _foundedUser  =_user.where((user) => user.name.toLowerCase().contains(search)).toList();
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        title: Container(
          height: 38,
          child: TextField(
            onChanged: (value) => onSearch(value),
            decoration: InputDecoration (
              filled: true,
              fillColor: Colors.grey[850],
              contentPadding: EdgeInsets.all(0),
              prefixIcon: Icon(Icons.search,color: Colors.grey.shade500,),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none
              ),
              hintStyle: TextStyle(fontSize: 14,
              color: Colors.grey.shade500
              ),
              hintText: 'search user'

            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.grey.shade900,
        child:_foundedUser.length >0 ? ListView.builder(
          itemCount: _foundedUser.length,
          itemBuilder: (context, index) {
            return userCompounets(user: _foundedUser[index]);
            
          }):Center(child: Text("user not found",style: TextStyle(color: Colors.white),),)
        
      ),
    );
  }


  userCompounets({required User user}){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(borderRadius: BorderRadius.circular(50),
                  child: Image.network(user.image),),
                
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text(user.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Text(user.name,style: TextStyle(color: Colors.grey[500]),)

                  ],
                )
              ],
              
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  user.isFollowingByMe=!user.isFollowingByMe;
                });
              },
              child: AnimatedContainer(duration: Duration(milliseconds: 300),
              
              
              decoration:BoxDecoration(
                
                color: user.isFollowingByMe ? Colors.blue[700] : Color(0xffffff),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: user.isFollowingByMe  ? Colors.transparent :Colors.grey.shade700
                
                
                
                
                
                
                )
                ),
                child: Center(
                  child: Text(user.isFollowingByMe ? "unfollow":"follow",style: TextStyle(color: user.isFollowingByMe ? Colors.white :Colors.white,))
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}