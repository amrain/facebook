import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'PostWdgit.dart';
import 'Storiswidget.dart';
import 'data/Data.dart';

class Facebook2 extends StatefulWidget {
  const Facebook2({Key? key}) : super(key: key);

  @override
  _Facebook2State createState() => _Facebook2State();
}

class _Facebook2State extends State<Facebook2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.camera_alt,size: 4.h,),
                  SizedBox(
                    height: 5.h,
                    width: 65.w,
                    child: TextField(


                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Colors.grey.shade200,
                        contentPadding: EdgeInsets.all(1.h),
                        hintText: "search",

                        prefixIcon: Icon(Icons.search,color: Colors.black54,),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.black12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.black12),
                        ),


                      ),

                    ),
                  ),
                  Image.asset("assets/images/messenger.png",height: 5.h,width: 7.w,)

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 13,bottom: 15,right: 8,left: 15),
              child: Row(
                children: [
                  Text("Storis",style: TextStyle(
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.w500
                  ),),
                  const Spacer(),
                  Text("See Archive",style: TextStyle(
                      fontSize: 2.h,
                      fontWeight: FontWeight.normal
                  ),),
                  Icon(Icons.chevron_right),

                ],
              ),

            ),



            Expanded(

              child: ListView(

                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 8,right: 8),
                    child: Stack(
                      children: [

                        SizedBox(
                          width: 30.w,
                          height: 25.h,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20), // Image border
                            child: Image.asset('assets/images/DBBkfhkXYAUNs_N.jpg', fit: BoxFit.cover),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(

                                child: Icon(Icons.add,size: 30,),
                                backgroundColor: Colors.white,
                              ),
                              SizedBox(
                                height:15.h,
                              ),
                              Text("Abood AM",style: TextStyle(
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
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                     

                        itemCount: posts.length,
                        itemBuilder: (context, index) {
                          return StorisWidget(posts[index].user, posts[index].post);
                        }),
                  ),










                ],
              ),
            ),
            const SizedBox(height: 18,),
            // ...posts.map((e) => PostWidget(e.user, e.post)).toList(),
            Expanded(

              child: ListView.builder(

                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                return PostWidget(posts[index].user, posts[index].post);
              }),
            )
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) =>UiTwo()  ),
          // );
        },
        child: Icon(Icons.add,size: 40,),
      ),

    );
  }
}
