
import 'package:facebook/PostWdgit.dart';
import 'package:facebook/Storiswidget.dart';
import 'package:facebook/data/Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Facebook extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       body: SafeArea(
         child: SizedBox(
           height: 101.h,
           child: ListView(
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
               SizedBox(
                 height: 30.h,

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
                     ...posts.map((e) => StorisWidget(e.user, e.post)).toList(),









                   ],
                 ),
               ),
               const SizedBox(height: 18,),
               ...posts.map((e) => PostWidget(e.user, e.post)).toList()

             ],

           ),
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
