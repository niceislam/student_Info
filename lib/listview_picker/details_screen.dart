import 'package:flutter/material.dart';
import 'package:untitled8/listview_picker/class_screen.dart';
import 'package:untitled8/listview_picker/widget_all.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.fathername,
    required this.mothername,
    required this.image,
  });
  final String fathername;
  final String mothername;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("${image}")),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Column(
              spacing: 10,
              children: [
                DetailsNameWidget(
                  title: "Father's name:",
                  name: '${fathername}',
                ),
                DetailsNameWidget(
                  title: "Mother's name:",
                  name: '${mothername}',
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          SizedBox(
            height: 50,
            width: MediaQuery.sizeOf(context).width/2,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back", style: TextStyle(
                color: Colors.white, fontSize: 32),)),
          )
        ],
      ),
    );
  }
}
