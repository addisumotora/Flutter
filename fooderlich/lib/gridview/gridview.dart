
import 'package:flutter/material.dart';
import 'grid_class.dart';
class Grid extends StatefulWidget {
  const Grid({ Key? key }) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {

    final List<GridV> touristSites = [
      GridV('../assets/high1.jpg','RasDashen', 'Ethiopia'),
      GridV('../assets/high2.jpeg','TulluDimtu', 'Ethiopia'),
      GridV('../assets/high3.jpg','Himalayas', 'Russia'),
      GridV('../assets/high5.jpeg','Everest', 'china'),
      GridV('../assets/high6.jpeg','Kilimanjaro', 'Tanzania'),
      GridV('../assets/high7.jpg','Baatu', 'Ethiopia'),
      GridV('../assets/high8.jpg','GaraMuleta','Yehone Bota'),
    ]; 
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(8),
        child:GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
          itemBuilder: (BuildContext context,index){
            return Container(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: 240,
                      height: 60,
                      color: Colors.black.withOpacity(0.5),
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[
                              Text(
                                 touristSites[index%7].text1,
                                 style: const TextStyle(
                                   fontSize: 20
                                 ),
                              ),
                              Text(touristSites[index%7].text2,
                              )
                            ],
                          ),

                          Icon(Icons.star_border)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(touristSites[index%6].imageUrl),
                fit: BoxFit.cover
                ),
              ),
            );
          }
          
          )
      ),
    );
  }
}