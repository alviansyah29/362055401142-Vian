import 'package:flutter/material.dart';

class HalamanAwal extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HalamanAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey
        tittle: 'GoWIST',
        elevation: 0,
      ),
    );
  }
}