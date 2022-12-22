import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: IdCard()));
}

class IdCard extends StatefulWidget {
  const IdCard({Key? key}) : super(key: key);

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("My Id Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0, // drop shadow
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("images/kg.JPG"),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey,
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Kaushal Gautam",
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Current Level",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "$level",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  "Kaushalgautam080@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
