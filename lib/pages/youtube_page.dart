import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class YoutubePage extends StatefulWidget {
  const YoutubePage({super.key});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,


    appBar: AppBar(
      backgroundColor: Colors.black,
      title: Text("Youtube", style: TextStyle(color: Colors.red, fontSize: 25),),


      leading:
      IconButton(onPressed: (){}, icon: Icon(Icons.youtube_searched_for_outlined, color: Colors.white, size: 25,),),

      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white, size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.connected_tv, color: Colors.white, size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active, color: Colors.white, size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.account_circle, color: Colors.white, size: 25,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.mic_sharp, color: Colors.white, size: 25,)),

      ],

    ),
    );

  }
}
