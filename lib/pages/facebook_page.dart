import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookPage extends StatefulWidget {
  const FacebookPage({super.key});

  @override
  State<FacebookPage> createState() => _FacebookPageState();
}

class _FacebookPageState extends State<FacebookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
     appBar: AppBar(
   backgroundColor: Colors.white,
       centerTitle: false,
       title: Text(
         "facebook",
       style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),
       ),
       actions: [
         IconButton(
             onPressed: (){},
             icon: Icon(Icons.search),
           color: Colors.grey[800],
         ),


       IconButton(
         onPressed: (){},
         icon: Icon(Icons.camera_alt),
         color: Colors.grey[800],
       ),
       ],

     ),
  body: ListView(
    children: [
      //#search
      Container(
        color: Colors.white,
        height: 120,
        padding: EdgeInsets.only(left: 10, right: 10, top: 10, ),
        child: Column(
          children: [
            Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/user_5.jpg"),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),

                    SizedBox(width: 10,),


                    //#search_input
                    Expanded(
                        child: Container(
                          height: 46,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.withOpacity(0.5),

                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's om your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey[700]),
                            ),
                          ),
                        ),
                    ),

                  ],
                )),
            Expanded(
            child: Container(
               child: Row(
           children: [
                 Expanded(
                       child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Icon(Icons.video_call, color: Colors.red,),
                           SizedBox(width: 5,),
                           Text("Live"),
                         ],
                       ),
                   ),


                   Container(
                     margin: EdgeInsets.symmetric(vertical: 14),
                     width: 1,
                     color: Colors.grey[300],
                   ),

             Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.photo, color: Colors.green,),
                   SizedBox(width: 5,),
                   Text("Photo"),
                 ],
               ),
             ),

             Container(
               margin: EdgeInsets.symmetric(vertical: 14),
               width: 1,
               color: Colors.grey[300],
             ),

             Expanded(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.location_on, color: Colors.red,),
                   SizedBox(width: 5,),
                   Text("Check in"),
                 ],
               ),
             ),




           ],
               ),
     ),
  ),
        ],
        ),
      ),

      //#stories
      Container(
        margin: EdgeInsets.only(top: 10),
        height: 200,
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            mainStory(
                storyImage: "assets/images/story_5.jpg",
                userImage: "assets/images/story_5.jpg",
                userName: "User Five"),
            mainStory(
                storyImage: "assets/images/story_4.jpg",
                userImage: "assets/images/story_4.jpg",
                userName: "User Four"),
            mainStory(
                storyImage: "assets/images/story_3.jpg",
                userImage: "assets/images/story_3.jpg",
                userName: "User Three"),
            mainStory(
                storyImage: "assets/images/story_2.jpg",
                userImage: "assets/images/story_2.jpg",
                userName: "User Two"),
            mainStory(
                storyImage: "assets/images/story_1.jpg",
                userImage: "assets/images/story_1.jpg",
                userName: "User One"),
          ],
        ),
      ),



      //#feed
    makeFeed(
          userName: 'User Two',
          userImage: 'assets/images/user_2.jpg',
          feedTime: '1 hr ago',
          feedText:
          'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
          feedImage: 'assets/images/story_2.jpg'),
      makeFeed(
          userName: 'User Three',
          userImage: 'assets/images/user_3.jpg',
          feedTime: '1 hr ago',
          feedText:
          'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
          feedImage: 'assets/images/story_3.jpg'),
    ],
  )
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}){
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          //#user_image
          Row(
            children: [
              Row(
                children: [

                  //#user_section
                 Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                      )

                    ),

                  ),

                 SizedBox(width: 10,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 10, fontWeight: FontWeight.bold),),
                      SizedBox(height: 3,),
                      Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                 ],
                 ),
                ],
              )
            ],
          ),

          //#post_text
          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            margin: EdgeInsets.symmetric(vertical: 10),
            color: Colors.white,
            child: Text(feedText),
          ),


          //#post_image
          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage), fit: BoxFit.cover)),
          ),

            //#post_comments

          Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5,0),
                    child: makeLove(),
                    ),


                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),),
                  ],
                ),

                Text(" 400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),),
              ],
            ),
          )


        ],
      ),
    );
  }

  Widget makeLike(){
    return  Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1)),
      child: Center(
      child: Icon(
       Icons.thumb_up,
       color: Colors.white,
       size: 12,
      ),
      ),
    );
  }


  Widget makeLove(){
    return  Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 1)),
      child: Center(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 12,
        ),
      ),
    );
  }

  Widget mainStory({storyImage, userImage, userName}){
   return AspectRatio(
       aspectRatio: 1.3/2,
       child: Container(
         margin: EdgeInsets.only(right: 10),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         image: DecorationImage(
           image: AssetImage(storyImage), fit: BoxFit.cover  ),
       ),
         child: Container(
           padding: EdgeInsets.all(10),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             gradient: LinearGradient(
               begin: Alignment.bottomRight,
               colors: [
                 Colors.black.withOpacity(0.9),
                 Colors.black.withOpacity(0.1),
               ]
             ),
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 width: 40,
                 height: 40,
                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   border: Border.all(color: Colors.blue, width: 2),
                   image: DecorationImage(
                     image: AssetImage(userImage), fit: BoxFit.cover,
                   )
                 ),
               ),
               Text(userName, style: TextStyle(color: Colors.white),)
             ],
           ),
         ),

       ),
   );

  }
}
