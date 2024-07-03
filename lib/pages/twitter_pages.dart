import 'package:flutter/material.dart';

class TwitterPages extends StatefulWidget {
  const TwitterPages({super.key});

  @override
  State<TwitterPages> createState() => _TwitterPagesState();
}

class _TwitterPagesState extends State<TwitterPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(

        backgroundColor: Colors.white,

        centerTitle: false,

        iconTheme: IconThemeData(color: Colors.white),

        title: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.person),
                 color: Colors.black,
               ),
                IconButton(
                 onPressed: (){},
                 icon: Icon(Icons.star_border),
                 color: Colors.black,
               ),
             ],
            ),



       ),



     );


  }
}
