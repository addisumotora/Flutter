import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card1 extends StatelessWidget {
  const Card1({ Key? key }) : super(key: key);

  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef  = 'Ray wenderlich';
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
          color: Colors.red,
          image: DecorationImage(image: AssetImage('assets/mare.jpg'),
          fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: FooderlichTheme.lightTextTheme.bodyText1,
                ),
                 Text(
              title,
              style: FooderlichTheme.lightTextTheme.headline2,
            ),
              ],
            ),
            
             Positioned(
               bottom: 10,
               right:0,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children:[
                   Text(
                      description,
                style: FooderlichTheme.lightTextTheme.bodyText1,
                         ),

                   Text(
                     chef,
                     style: FooderlichTheme.lightTextTheme.bodyText1,
                   )
            
                 ]
               
             ),
        )
          ],
        ),
      ),
    );
  }
}

