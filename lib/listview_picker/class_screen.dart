import 'package:flutter/material.dart';

class Item {
  final String image;
  final String name;
  final String semester;
  final String fathername;
  final String mothername;

  Item({
    required this.image,
    required this.name,
    required this.semester,
    required this.fathername,
    required this.mothername,
  });
}

final List<Item> studentItem = [
  Item(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXxls9u_fRkoQHQVhVid9MGdPPi7_V5uYzHA&s",
    name: "Nice islam",
    semester: "3",
    fathername: 'Mokbul Hossen',
    mothername: 'Kohinur Akter',
  ),
  Item(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcuJgsxv07cvph1FrJWjJD6RqAuvUhrC-PBA&s",
    name: "Hira Ahmed",
    semester: "4",
    fathername: 'Akter Hossain',
    mothername: 'Khadiza Akter',
  ),
];
