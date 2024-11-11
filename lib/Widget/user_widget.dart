import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String image;
  String title;
  String first;
  String last;
   CustomWidget({super.key ,
     required this.image,
     required this.title,
     required this.first,
     required this.last});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(child: Image.network(image), radius: 50,),
            SizedBox(width: 10,),
            Text(title , style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Text(first),
            SizedBox(width: 10,),
            Text(last),
          ],
        )
      ],
    );
  }
}
