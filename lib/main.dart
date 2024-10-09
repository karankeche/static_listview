import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width:${MediaQuery.of(context).size.width}");
    print("Device height:${MediaQuery.of(context).size.height}");

    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "ListView Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children:  [
            Image.network("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
            const Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Image.network("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
            GestureDetector(
              onTap: () {
                print("GestureDetector Tapped");
              },
              child: Container(
                height:50,
                color: Colors.blue,
                 child: const Text(
                  "Press Me",)
              ),
            ),
          ],

          
        ),
      ),
    );
  }
}
