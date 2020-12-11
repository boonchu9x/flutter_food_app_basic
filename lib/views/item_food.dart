import 'package:flutter/material.dart';
import 'package:flutter_food_app_basic/model/category.dart';
import 'package:flutter_food_app_basic/model/food.dart';
import 'package:flutter_food_app_basic/util/const.dart';
import 'package:flutter_food_app_basic/views/detail_food.dart';

Widget buildItemFood(Food food) => Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //LOAD IMAGE FROM URL
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.fill,
                          width: 120.0,
                          height: 80.0,
                          //place image when error or loading image
                          placeholder: 'assets/images/image_placeholder.png',
                          image: food.url,
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 14.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              food.title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            buildRowComponent(
                                '${food.duration.inMinutes.toString()} Minutes',
                                Icons.schedule,
                                19.0),
                            buildRowComponent(
                              '${food.complexity}'.split('.').last,
                              Icons.outdoor_grill_outlined,
                              22.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

Container buildRowComponent(String content, IconData icon, double sizeIcon) {
  return Container(
    padding: EdgeInsets.only(
      top: 6.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black26,
          size: sizeIcon,
        ),
        SizedBox(
          width: 6.0,
        ),
        Text(
          content,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 14.5,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
