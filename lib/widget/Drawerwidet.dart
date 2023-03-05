import 'package:flutter/material.dart';
import 'package:projectodc/get-start/get-start.dart';
import 'package:projectodc/homepage/Home-bage.dart';
import 'package:projectodc/widget/seting.dart';
class Drawerwidet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
            accountName: Text("Emad sayed",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold),
            ),
            accountEmail: Text("Emadsayed116@gmail.com" ,
                style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold)
            ),
            currentAccountPicture: CircleAvatar(backgroundImage:
            AssetImage("lib/assets/Untitled design (4).jpg"),),
        )
        ),
        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Homepage()));
          },
          leading: Icon(Icons.home,color: Colors.red,),
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 18 ,
            fontWeight: FontWeight.bold,
            ),
          ),
        ),



        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => seting()));
          },
          leading: Icon(
            Icons.person,
            color: Colors.red,
          ),
          title: Text(
            "My Acount",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GetStart()));
          },
          leading: Icon(Icons.restaurant_menu,color: Colors.red,),
          title: Text(
            "Menu",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          onTap: () {
         //  launch('https://besosayed.000webhostapp.com');//url web
            },
          leading: Icon(Icons.image,color: Colors.red,),
          title: Text(
            "Gallery",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Homepage()));
          },
          leading: Icon(Icons.info_rounded,color: Colors.red,),
          title: Text(
            "Contact",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => GetStart()));
          },
          leading: Icon(Icons.exit_to_app,color: Colors.red,),
          title: Text(
            "Log Out",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      ),
    );
  }


}

