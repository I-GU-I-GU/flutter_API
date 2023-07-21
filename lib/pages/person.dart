import 'dart:convert';

import 'package:bottom/profiles/profilePage.dart';
import 'package:flutter/material.dart';

class personPage extends StatefulWidget {
  const personPage({super.key});

  @override
  State<personPage> createState() => _personPageState();
}

class _personPageState extends State<personPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return MyBox(data[index]["image_url"], data[index]["t1"],
                      data[index]["t2"], data[index]["t3"]);
                },
                itemCount: data.length,
              );
            } else {
              return Container();
            }
          },
          future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
        )),
      ),
    );
  }

  //-------------------------------My box----------------
  Widget MyBox(String image_url, String t1, String t2, String t3) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        //color: Colors.blue,
        height: 150,
        color: Colors.amber[100],
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Card(
                elevation: 10.0,
                //shadowColor: Colors.black.withOpacity(0.5, BlendMode.darken),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: NetworkImage(image_url),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            ),
            Positioned(
                top: 35,
                left: 180,
                child: Container(
                  height: 150,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t1,
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF363f93),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        t2,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Text(
                        t3,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
            OutlinedButton(
              onPressed: () {
                print('next_page');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profilePage()));
              },
              child: Text(""),
            )
          ],
        ),
      ),
    );
  }
}
