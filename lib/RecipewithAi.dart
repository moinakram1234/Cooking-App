import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RecipeWithAI extends StatefulWidget {
  @override
  _RecipeWithAIState createState() => _RecipeWithAIState();
}

class _RecipeWithAIState extends State<RecipeWithAI> {
  bool showTypingText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Card for "Type" action
            Container(
                 width: 100.0, // Set this to your desired size
              height: 80.0, // Set this to your desired size
              child: Card(
                color: const Color.fromARGB(96, 41, 41, 41),
                child: TextButton.icon(
                  onPressed: () {
                    // Handle the "Type" button press
                  },
                  icon: Icon(Icons.text_fields, color: Colors.white, size: 14.0),
                  label: Text('Type', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            // Card for "Voice" action
            Container(
                width: 100.0, // Set this to your desired size
              height: 80.0, // Set this to your desired size
              child: Card(
              color: const Color.fromARGB(96, 41, 41, 41),
                child: TextButton.icon(
                  onPressed: () {
                    // Handle the "Voice" button press
                  },
                  icon: Icon(Icons.mic, color:  Colors.white, size: 14.0),
                  label: Text('Voice', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Container(
              width: 150.0, // Set this to your desired size
              height: 80.0, // Set this to your desired size
              child: Card(
                color: const Color.fromARGB(96, 41, 41, 41),
                child: TextButton.icon(
                  onPressed: () {
                    // Handle the "Add Ingredient" button press
                  },
                  icon: Icon(Icons.add, color: Colors.white, size: 14.0),
                  label: Text('Add Ingredient', style: TextStyle(color: Colors.white, fontSize: 12.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
