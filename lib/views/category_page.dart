import 'package:flutter/material.dart';
import 'package:flutter_food_app_basic/model/category.dart';
import 'package:flutter_food_app_basic/util/const.dart';
import 'package:flutter_food_app_basic/views/item_category_grid.dart';

//VÌ DANH SÁCH KHÔNG THAY ĐỔI NÊN DÙNG STATLESS
class CategoryPage extends StatelessWidget {
  Category category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView(
          padding: EdgeInsets.symmetric(
            horizontal: paddingDefault,
            vertical: paddingDefault,
          ),
          children: LIST_CATEGORY
              .map((element) => ItemCategory(category: element))
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            //độ rộng tối đa
            childAspectRatio: 3 / 2,
            //tỉ lệ chiều rộng chiều cao
            crossAxisSpacing: paddingDefault,
            //khoảng cách item theo chiều dọc vertical
            mainAxisSpacing: paddingDefault, //khoảng cách item theo chiều ngang horizontal
          )),
    );
  }
}
