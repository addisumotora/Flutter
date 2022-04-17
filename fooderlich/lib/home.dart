import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
import 'package:fooderlich/card2.dart';
import 'package:fooderlich/card3.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   int bottomIndex = 0;
   final List pages = [
     Card1(),
     Card2(),
     Card3()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("fooderlich",
        style: Theme.of(context).textTheme.headline6,)) ,),

        body: pages[bottomIndex],

  
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:
 Theme.of(context).textSelectionTheme.selectionColor,
       currentIndex: bottomIndex,
        onTap: (int index){
          setState(() {
            bottomIndex = index;
          });
          
        },
      
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'card1'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'card2'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'card3'
            ),
        ]
      ),
      
    );
  }
}
