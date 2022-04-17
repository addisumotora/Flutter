import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'circle_image.dart';
class AuthorCard extends StatefulWidget {
 // 1
      final String authorName;
      final String title;
      final ImageProvider? imageProvider;
      const AuthorCard({
      Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider,
      }) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
 bool _isclicked = false;
 @override
 Widget build(BuildContext context) {
 // TODO: Replace return Container(...);
 print(_isclicked);
  return Container(
    padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Row(
          children: [
            CricleImage(30, widget.imageProvider),
            const SizedBox(width: 8,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.authorName,
               style: FooderlichTheme.lightTextTheme.headline6,
            ),
            Text(widget.title,
             style: FooderlichTheme.lightTextTheme.bodyText1,
            )
          ],
        ),
      ]
        ),
   
      IconButton(onPressed: (){
        setState(() {
          _isclicked =!_isclicked;
        });
      },
      icon: Icon(_isclicked ? Icons.favorite :
          Icons.favorite_border),
       iconSize: 30,
 // 2
            color: Colors.red[400],
      )
      ],
      ),
      
  );
 }
}