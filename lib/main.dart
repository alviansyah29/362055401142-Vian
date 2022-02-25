import 'package:flutter/material.dart';
import 'halaman2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('GoWIST'),
            backgroundColor: Colors.blueAccent,
          ),
          backgroundColor: Colors.blueGrey,
          bottomNavigationBar: BottomNavigationGoWIST(),
        ));
  }
}

class BottomNavigationGoWIST extends StatefulWidget {
  @override
  _BottomNavigationGoWISTState createState() => _BottomNavigationGoWISTState();
}

class _BottomNavigationGoWISTState extends State<BottomNavigationGoWIST> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 2, blurRadius: 15, offset: Offset(0, 5))
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: _selectedIndex == 0 ? new Icon(Icons.home_filled) : new Icon(Icons.home_outlined))
        ],
      ),
    );
  }
}
