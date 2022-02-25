import 'package:flutter/material.dart';
import 'halaman3.dart';
import 'halaman4.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: FriendlychatApp()));

class FriendlychatApp extends StatelessWidget {
  const FriendlychatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 90, 40, 60),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage('https://img.freepik.com/free-vector/gradient-10-10-background_157027-577.jpg?w=826'),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Welcome to Sans",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "selamat datang, semoga betah ya",
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.square(400),
                  child: Image.asset(
                    'assets/images/wp.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  )),
                ),
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => SignUp());
                  Navigator.push(context, route);
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
