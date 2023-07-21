import 'package:flutter/material.dart';

class ContectPage extends StatefulWidget {
  const ContectPage({super.key});

  @override
  State<ContectPage> createState() => _ContectPageState();
}

class _ContectPageState extends State<ContectPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text("contect"),
        )
      ],
    );
  }
}
