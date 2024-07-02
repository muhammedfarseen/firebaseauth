import 'package:flutter/material.dart';

class LedgerDetailPage extends StatelessWidget {
  final String title;

  const LedgerDetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details for $title'),
      ),
    );
  }
}
