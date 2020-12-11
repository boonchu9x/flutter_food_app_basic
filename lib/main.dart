import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_food_app_basic/views/category_page.dart';
import 'package:flutter_food_app_basic/views/detail_food.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', //this is "root"
    routes: {//path to screen
      '/detail_food': (context) => DetailScreen(),
    },
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
    theme: ThemeData.light(),
    //set color text, color icon white
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blue[400],
      //statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
        elevation: 0.0,
        title: Center(child: Text('Food Menu')),
        actions: [
          IconButton(
            icon: Icon(
              Icons.sort,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: CategoryPage(),
    );
  }
}
