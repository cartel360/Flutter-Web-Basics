import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 80,
              width: 150,
              child: Image.asset('assets/logo1.png'),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                NavBarItem('Episodes'),
                SizedBox(
                  width: 60,
                ),
                NavBarItem('About')
              ],
            )
          ],
        ));
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
