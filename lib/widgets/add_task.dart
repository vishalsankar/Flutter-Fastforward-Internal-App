import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Task extends StatelessWidget {
  final controller;
  VoidCallback save;
  VoidCallback cancel;
  Task({super.key, this.controller, required this.save, required this.cancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color.fromARGB(255, 44, 44, 44),
      content: Container(
        height: MediaQuery.of(context).size.height / 2,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Text(
            "ADD TASK",
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a task",
                hintStyle: TextStyle(color: Colors.white)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Priority:",
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 255, 255, 255)),
          ),
          SizedBox(
            height: 10,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          SizedBox(
            height: 190,
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: save,
                child: Text("Save"),
                color: Color.fromARGB(255, 123, 123, 123),
              ),
              SizedBox(
                width: 20,
              ),
              MaterialButton(
                onPressed: cancel,
                child: Text("Cancel"),
                color: Color.fromARGB(255, 123, 123, 123),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
