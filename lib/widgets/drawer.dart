import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imgUrl =
      "https://instagram.flhe13-1.fna.fbcdn.net/v/t51.2885-19/308925011_625764859011482_3309902416446023096_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.flhe13-1.fna.fbcdn.net&_nc_cat=102&_nc_ohc=H2c6h_po4X8AX_QehBe&tn=7KDlywcLDHMtoMIU&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8vvOZoAH7VU0das-VRW-i5jo_NSh7owg4MZQvVTfUFbw&oe=63511A18&_nc_sid=8fd12b";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Hamid"),
                accountEmail: Text("hamid@gmail.com"),
                // currentAccountPicture: Image.network(imgUrl),
                // currentAccountPicture: Image.asset("assets/images/dp.jpg"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgUrl),
                ),

                // ignore: prefer_const_literals_to_create_immutables
                // otherAccountsPictures: [
                //   const CircleAvatar(
                //     backgroundColor: Colors.white,
                //     child: Text("HJ"),
                //   ),
                // ],
              ),
            ),
            const ListTile(
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
            const ListTile(
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
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
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
