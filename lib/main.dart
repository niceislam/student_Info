import 'package:flutter/material.dart';

import 'listview_picker/details_screen.dart';
import 'listview_picker/home_screen.dart';
import 'listview_picker/student_add.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
