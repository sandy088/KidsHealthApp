import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({Key? key}) : super(key: key);

  final imgUrl =
      "https://www.pinclipart.com/picdir/big/165-1653686_female-user-icon-png-download-user-colorful-icon.png";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Sandeep Singh",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text("sandeepsidhuvip88@gmail.com"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imgUrl)),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                print("On tap is working Amazing");
              },
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "E-mail Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              leading: Icon(
                CupertinoIcons.arrow_2_circlepath_circle_fill,
                color: Colors.white,
              ),
              title: Text(
                "Re-Login",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
