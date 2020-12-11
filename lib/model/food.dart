import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_food_app_basic/util/const.dart';

class Food {
  int categoryId;
  int id;
  String title;
  String url;
  Duration duration; //time cook
  Complexity complexity; //level cook food
  List<String> listIngredient = List<String>(); //thành phần món ăn

  Food({
    this.categoryId,
    this.id,
    @required this.title,
    @required this.url,
    this.duration,
    this.complexity,
    this.listIngredient,
  }) {
    //hàm thực thi constructor
    //set id auto increment (tự động tăng)
    this.id = Random().nextInt(1000);
  }
}
