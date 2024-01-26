import 'package:flutter/material.dart';

class LikeIcon extends StatefulWidget {
  @override
  State<LikeIcon> createState() => _LikeIconState();
}

class _LikeIconState extends State<LikeIcon> {



 bool isClicked=false;
  void fav(){
    setState(() {
      isClicked=!isClicked;
    });
  }

  Future<int> tempFuture() async {
    return Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: tempFuture(),
        builder: (context, snapshot) =>
            snapshot.connectionState != ConnectionState.done
                ? Row(
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
                   // Icon(Icons.favorite, size: 110),
                  ],
                )
                : SizedBox(),
      ),
    );
  }
}
