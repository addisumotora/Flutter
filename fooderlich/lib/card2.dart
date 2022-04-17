import 'package:flutter/material.dart';
import 'package:fooderlich/author.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/juice2.png'),
          fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),

        child: Column(
          children: [
            const AuthorCard(
              authorName: "Addisu", 
              title: 'Smoothie Connoissuer',
              imageProvider: AssetImage("assets/my_photo.jpg"),),

            Expanded(
 // 2
              child: Stack(
                  children: [
                    // 3
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                    'Recipe',
                    style: FooderlichTheme.lightTextTheme.headline1,
                  ),
                ),
                    // 4
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                    'Smoothies',
                    style: FooderlichTheme.lightTextTheme.headline1,
                    ),
                  ),
                 ),
                ],
              ),
             ),
          ],

        ),
      )
    );
  }
}