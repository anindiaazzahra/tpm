import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            title: Text(
              "123210072 - Anindia Azzahra",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 14.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey), // Outline color
                                borderRadius: BorderRadius.circular(26.0),
                              ),
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search',
                              hintStyle: TextStyle(fontSize: 16.0),
                              contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 14.0),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/icon.png',
                                width: 38,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                    children: <Widget>[
                      Image.asset('images/img1.jpg'),
                      Image.asset('images/img2.jpg'),
                      Image.asset('images/img3.jpg'),
                      Image.asset('images/img4.jpg'),
                      Image.asset('images/img5.jpg'),
                      Image.asset('images/img6.jpg'),
                      Image.asset('images/img7.jpg'),
                      Image.asset('images/img8.jpg'),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See more",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

