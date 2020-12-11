import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_food_app_basic/model/category.dart';
import 'package:flutter_food_app_basic/model/food.dart';
import 'package:flutter_food_app_basic/util/const.dart';
import 'package:flutter_food_app_basic/views/item_food.dart';

class DetailScreen extends StatefulWidget {
  static const String routerName = '/detail_food';

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final textEditingController = TextEditingController();
  Category category;

  List<Food> listFood;

  @override
  void dispose() {
    super.dispose();
    // Clean up the controller when the widget is disposed.
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Map<String, Category> arguments = ModalRoute.of(context).settings.arguments;
    category = arguments['category'];

    //filter list food with category id
    listFood = LIST_FOOD
        .where((element) => element.categoryId == category.id)
        .toList();
    return Scaffold(
      backgroundColor: colorBackground, //set background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  //IMAGE CATEGORY BACKGROUND
                  Container(
                    height: size.height / 3,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                      ),
                      image: DecorationImage(
                        image: AssetImage(category.resImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //TITLE CATEGORY
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    left: 0.0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 68.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black26.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        child: Text(
                          category.content,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //SEARCH BAR
                  buildSearchBar(),
                ],
              ),

              //LISTVIEW
              SizedBox(
                height: size.height * 2 / 3,
                child: listFood.length > 0
                    ? ListView.builder(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                          top: 14.0,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        //disable scroll listview in SingleChildScrollView
                        itemCount: listFood.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) =>
                            buildItemFood(listFood[index]))
                    : Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sentiment_very_dissatisfied_outlined,
                              size: 100.0,
                              color: Colors.black.withOpacity(0.19),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              'No food found!',
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //SEARCH BAR
  Padding buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0.1, 0.5),
              spreadRadius: 0.1,
              blurRadius: 2,
            ),
          ],
          border: Border.all(color: Colors.black26, width: 0.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black54,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Expanded(
              child: TextField(
                autofocus: false,
                //not focus to textfield
                controller: textEditingController,
                textInputAction: TextInputAction.done,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration.collapsed(
                  hintText: 'Tìm kiếm món ăn',
                  hintStyle: TextStyle(
                    color: Colors.black26,
                  ),
                  border: InputBorder.none, //no input border
                ),
                maxLines: 1,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                color: Colors.black54,
              ),
              onPressed: () {
                print('Mic');
              },
            ),
          ],
        ),
      ),
    );
  }
}
