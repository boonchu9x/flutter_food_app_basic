import 'package:flutter/material.dart';
import 'package:flutter_food_app_basic/model/category.dart';
import 'package:flutter_food_app_basic/util/const.dart';
import 'package:flutter_food_app_basic/views/detail_food.dart';

class ItemCategory extends StatelessWidget {
  Category category;

  ItemCategory({this.category});

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        image: DecorationImage(
          image: AssetImage(category.resImage),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(
          borderCorner,
        ),
      ),
      child: InkWell(
        onTap: () {
          /*Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(category: category),
            ),
          );*/

          //pass data ~ intent in java
          Navigator.pushNamed(context, DetailScreen.routerName,
              arguments: {'category': category});
        },
        child: Container(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black26.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderCorner),
                  bottomRight: Radius.circular(borderCorner),
                ),
              ),
              child: Text(
                category.content,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
