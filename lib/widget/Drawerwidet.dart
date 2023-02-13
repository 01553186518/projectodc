import 'package:flutter/material.dart';
import 'package:projectodc/get-start/get-start.dart';
import 'package:projectodc/homepage/Home-bage.dart';
import 'package:projectodc/widget/CartPage.dart';
class Drawerwidet extends StatelessWidget {
  const Drawerwidet({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => Homepage()));
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
                MaterialPageRoute(builder: (context) => CartPage()));
          },
          leading: Icon(Icons.shopping_cart_rounded,color: Colors.red,),
          title: Text(
            "My Order",
            style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CartPage()));
          },
          leading: Icon(Icons.favorite,color: Colors.red,),
          title: Text(
            "My wish List",
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
          leading: Icon(Icons.settings,color: Colors.red,),
          title: Text(
            "Seting",
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
