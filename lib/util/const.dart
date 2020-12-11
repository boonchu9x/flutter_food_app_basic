import 'package:flutter/material.dart';
import 'package:flutter_food_app_basic/model/category.dart';
import 'package:flutter_food_app_basic/model/food.dart';

const Color colorBackground = Color(0xFFF6F6F6);

final LIST_CATEGORY = [
  Category(
      id: 0,
      content: 'Japanese\'s Foods',
      color: Colors.deepOrange[400],
      resImage: 'assets/images/japanese_food.jpg'),
  Category(
      id: 1,
      content: 'Pizza',
      color: Colors.teal[400],
      resImage: 'assets/images/pizza.jpg'),
  Category(
      id: 2,
      content: 'Humburgers',
      color: Colors.cyanAccent[400],
      resImage: 'assets/images/humburger.jpg'),
  Category(
      id: 3,
      content: 'Doner Kebab',
      color: Colors.blue[400],
      resImage: 'assets/images/donner_kerbab.jpg'),
  Category(
      id: 4,
      content: 'Tomato',
      color: Colors.amber[400],
      resImage: 'assets/images/tomato.jpg'),
  Category(
      id: 5,
      content: 'Cocacola',
      color: Colors.yellowAccent[400],
      resImage: 'assets/images/cocacola.jpg'),
  Category(
      id: 6,
      content: 'Spite',
      color: Colors.orange[400],
      resImage: 'assets/images/spite.jpg'),
  Category(
      id: 7,
      content: 'Pepsi',
      color: Colors.blue[200],
      resImage: 'assets/images/pepsi.jpg'),
  Category(
      id: 8,
      content: 'Potato',
      color: Colors.teal[200],
      resImage: 'assets/images/potato.jpg'),
  Category(
      id: 9,
      content: 'Sanwich',
      color: Colors.deepOrange[200],
      resImage: 'assets/images/sanwich.jpg'),
  Category(
      id: 10,
      content: 'Orange Juice',
      color: Colors.orange[100],
      resImage: 'assets/images/orange_juice.jpg'),
];

const paddingDefault = 14.0;
const borderCorner = 10.0;

enum Complexity {
  Simple,
  Medium,
  Hard,
}

final LIST_FOOD = [
  //array of food's objects
  Food(
      title: "Sushi - 寿司",
      url: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes:25),
      complexity: Complexity.Medium,
      listIngredient: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      title: "Pizza tonda",
      url: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes:15),
      complexity: Complexity.Hard,
      listIngredient: ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
      categoryId: 2),
  Food(
      title: "Makizushi",
      url: "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes:20),
      categoryId: 1),
  Food(
      title: "Tempura",
      url: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      title: "Neapolitan pizza",
      url: "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes:20),
      complexity: Complexity.Medium,
      listIngredient: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 2),
  Food(
      title: "Sashimi",
      url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      title: "Homemade Humburger",
      url: "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),

];
