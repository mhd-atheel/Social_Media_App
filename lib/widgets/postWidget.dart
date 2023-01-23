import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostWidget extends StatefulWidget {
  final String name;
  PostWidget({
    required this.name
  });
  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isLiked = false;
  bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 2),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text(widget.name),
            trailing: IconButton( icon:Icon(Icons.more_vert_outlined), onPressed: () { print("more optin"); },),
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      isLiked =!isLiked;
                    });
                  }, icon: isLiked ==false?Icon(FontAwesomeIcons.heart):Icon(FontAwesomeIcons.solidHeart,color: Colors.red,) ),
                  IconButton(onPressed: (){

                  }, icon: Icon(FontAwesomeIcons.commentDots)),
                  Text(
                    "125654",style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  Text(
                    " Likes and ",style: TextStyle(
                      fontWeight: FontWeight.normal,

                  ),

                  ),
                  Text(
                    "156",style: TextStyle(
                      fontWeight: FontWeight.bold,

                  ),
                  ),
                  Text(
                    " Comments",style: TextStyle(
                      fontWeight: FontWeight.normal,

                  ),

                  )
                ],
              ),
              Row(
                children: [
                  IconButton(onPressed: (){
                    setState(() {
                      isSaved =!isSaved;
                    });
                  }, icon: isSaved ==false?Icon(FontAwesomeIcons.bookmark,size: 23,):Icon(FontAwesomeIcons.solidBookmark,color: Colors.black87,size: 23,) )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
