import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:untitled8/listview_picker/class_screen.dart';
import 'package:untitled8/listview_picker/home_screen.dart';
import 'package:untitled8/listview_picker/widget_all.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController fathercontroller = TextEditingController();
  TextEditingController mothercontroller = TextEditingController();
  TextEditingController imagecontroller = TextEditingController();
  TextEditingController semestercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Add Student",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -170),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.greenAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddItemRow(title: 'Name', controller: namecontroller),
                      AddItemRow(
                        keyboardtype: TextInputType.phone,
                        title: 'Semester',
                        controller: semestercontroller,
                      ),
                      AddItemRow(title: "Image", controller: imagecontroller),
                      AddItemRow(title: 'Father', controller: fathercontroller),
                      AddItemRow(title: 'Mother', controller: mothercontroller),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width / 2,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                final item = studentItem;
                item.add(
                  Item(
                    image: "${imagecontroller.text}",
                    name: "${namecontroller.text}",
                    semester: "${semestercontroller.text}",
                    fathername: "${fathercontroller.text}",
                    mothername: "${mothercontroller.text}",
                  ),
                );

                setState(() {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (c) => HomeScreen()),
                  );
                });
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
