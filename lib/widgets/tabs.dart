// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final taskname;
  final bool check;
  Function(bool?) changed;

  Tabs({super.key, this.taskname, required this.check, required this.changed});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 73, 73, 73),
              offset: const Offset(
                2.0,
                2.0,
              ),
              blurRadius: 2.0,
              spreadRadius: 1.0,
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 34, 34, 34),
        ),
        padding: EdgeInsets.all(24),
        child: Row(children: [
          Checkbox(value: widget.check, onChanged: widget.changed),
          Text(
            widget.taskname,
            style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                decoration: widget.check
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          )
        ]),
      ),
    );
  }
}
