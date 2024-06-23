import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    // accept the id
    // Query detial with the id
    // show the detal info
    print("Detail Screen Id : $id");
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
    );
  }
}
