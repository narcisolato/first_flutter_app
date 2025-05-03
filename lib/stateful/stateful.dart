import 'package:flutter/material.dart';

class StatefulButton extends StatefulWidget {
  const StatefulButton({super.key});

  @override
  State<StatefulWidget> createState() => _StatefulButtonState();
}

class _StatefulButtonState extends State<StatefulButton> {
  int counter = 0;

  void onClicked() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          children: [
            Text("$counter", style: TextStyle(color: Colors.black)),
            IconButton(
              iconSize: 30,
              onPressed: onClicked,
              icon: Icon(Icons.add_box_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
