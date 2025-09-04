import 'package:flutter/material.dart';

class itemListCard extends StatelessWidget {
  const itemListCard({
    super.key,
    required this.name,
    required this.semester,
    required this.image,
  });
  final String name;
  final String semester;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage("${image}"),
        ),
        title: Text(
          "${name}",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "${semester}rd semester",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        trailing: Icon(Icons.delete, size: 33),
      ),
    );
  }
}
class DetailsNameWidget extends StatelessWidget {
  const DetailsNameWidget({
    super.key, required this.title, required this.name,
  });
  final String title;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$title:",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              enabled: false,
              decoration: InputDecoration(
                hintText: "$name",
                hintStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                fillColor: Colors.greenAccent.withOpacity(0.2),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
