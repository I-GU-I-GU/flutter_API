import 'package:flutter/material.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text("Home Page"),
        )
      ],
    );
  }
}
