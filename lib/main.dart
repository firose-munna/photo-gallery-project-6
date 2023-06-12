import 'package:flutter/material.dart';
import 'image_gallery/imageGrid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainActivity(),
    );
  }
}

class MainActivity extends StatelessWidget {
  const MainActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mySnackBar(message, context) {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(message)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo Gallery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Welcome to My Photo Gallery!",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                ),
              ),
            ),


            Wrap(
              children: [
                ImgGrid(),
                ImgGrid(),
                ImgGrid(),
                ImgGrid(),
                ImgGrid(),
                ImgGrid(),
              ],
              spacing: 8,
              runSpacing: 8,
            ),
            ListView(
              primary: false,
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text(
                    "Sample Photo 1",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Category 1"),
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text(
                    "Sample Photo 2",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Category 2"),
                ),
                ListTile(
                  leading: Icon(Icons.image),
                  title: Text(
                    "Sample Photo 3",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text("Category 3"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cloud_upload),
        onPressed: () {
          mySnackBar("Photos Uploaded Successfully!", context);
        },
      ),
    );
  }
}
