 import 'package:facebook/Model/Post.dart';
import 'package:facebook/Model/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PostWidget extends StatelessWidget {
  User? user ;
  Post? post;
  PostWidget(this.user,this.post);
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage:NetworkImage(user!.image!),
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(user!.name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("updated his cover photo",style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Text('15 min ago',style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold))

                  ],
                ),
                Spacer(),
                Image.asset('assets/images/dots.png',width: 28,)
              ],),
          ),
          const SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Image.network(post!.image!.toString(),
                height: 60.h,
                width: MediaQuery.of(context).size.width/1,
                fit: BoxFit.cover,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/6.5,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CircleAvatar(
                          radius: 15,
                          child: Image.asset('assets/images/like.png',width: 28,)),
                      Positioned(
                          left: 20,
                          child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Image.asset('assets/images/love.png',width: 28,)))


                    ],
                  ),
                ),
                Text("52",style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("45 Comments",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)

              ],

            ),
          ),
          Divider(
            indent: 5,
            endIndent: 5,
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/like (1).png',width: 20,),
                  SizedBox(width: 4,),
                  Text("Like",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                ],),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/comment.png',width: 20,),
                  SizedBox(width: 4,),
                  Text("Comment",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                ],)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/20,),
        ],
      ),
    );;
  }
}


