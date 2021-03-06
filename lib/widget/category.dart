import 'package:car_zone/inner_screens/categories_feeds.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({Key key, this.index}) : super(key: key);
  final int index;

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<Map<String, Object>> categories = [
    {
      'categoryName': 'Car Service',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
    {
      'categoryName': 'Rescue Winch',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
    {
      'categoryName': 'Car Agencies',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
    {
      'categoryName': 'Selling Car',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
    {
      'categoryName': 'New Car',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
    {
      'categoryName': 'Old Car',
      'categoryImagesPath': 'assets/images/logocaricon.png',
    },
   
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(CategoriesFeedsScreen.routeName,
                arguments: '${categories[widget.index]['categoryName']}');
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image:
                    AssetImage(categories[widget.index]['categoryImagesPath']),
                //fit: BoxFit.fill
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
             width: 100,
             height: 100,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 10,
          right: 10,
          child: Container(
            child: Material(
              elevation: 5.0, 
              child: Container(
                color: Theme.of(context).backgroundColor,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Container(
                  color: Color(0xFFFFFFFF),
                  child: Text(
                    categories[widget.index]['categoryName'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                       fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: HexColor('#2196f3'),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
