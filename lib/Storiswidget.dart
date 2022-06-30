import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Model/Post.dart';
import 'Model/user.dart';

class StorisWidget extends StatelessWidget {
  User? user ;
  Post? post;
  StorisWidget(this.user,this.post);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            SizedBox(
              width: 30.w,
              height: 25.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: Image.network(post!.image!, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(user!.image!),
                    ),
                  ),
                  SizedBox(
                    height:15.h,
                  ),
                  Text(user!.name!,style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 4.w
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
