import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

List<String> array = ["1.jpeg", "2.jpeg", "3.jpeg"];
var i = 0;
var mainImage = "assets/images/" + array[i];

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return Pick();
  }
}

class Pick extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 120,
              child: Image.asset(
                mainImage,
                fit: BoxFit.fill,
                width: 200,
                height: 120,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          i = 0;
                          mainImage = "assets/images/" + array[i];
                        }),
                        child: Image.asset(
                          "assets/images/1.jpeg",
                          width: 80,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          i = 1;
                          mainImage = "assets/images/" + array[i];
                        }),
                        child: Image.asset(
                          "assets/images/2.jpeg",
                          width: 80,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: () => setState(() {
                          i = 2;
                          mainImage = "assets/images/" + array[i];
                        }),
                        child: Image.asset(
                          "assets/images/3.jpeg",
                          width: 80,
                          height: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ])
          ],
        ),
      ),
    ));
  }
}
