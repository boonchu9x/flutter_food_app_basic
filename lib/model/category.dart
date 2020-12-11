import 'package:flutter/material.dart';

class Category {
  final int id;
  final String content;
  final Color color;
  final String resImage;

  Category({
    @required this.id, //bắt buộc
    @required this.content, //bắt buộc
    this.color,
    this.resImage
  });



}
