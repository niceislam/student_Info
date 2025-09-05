import 'package:flutter/material.dart';
import 'package:untitled8/listview_picker/class_screen.dart';
import 'package:untitled8/listview_picker/details_screen.dart';
import 'package:untitled8/listview_picker/widget_all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Listview picker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: SizedBox(
              height: 45,
              child: TextField(
                cursorColor: Colors.blue,
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: studentItem.length,
                itemBuilder: (context, index) {
                  final items = studentItem[index];
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (c) => DetailsScreen(
                                fathername: "${items.fathername}",
                                mothername: "${items.mothername}",
                                image: '${items.image}',
                              ),
                        ),
                      );
                    },
                    child: itemListCard(
                      name: '${items.name}',
                      semester: '${items.semester}',
                      image: '${items.image}',
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {

        },
        child: Icon(Icons.add, color: Colors.white, size: 32),
      ),
    );
  }
}
