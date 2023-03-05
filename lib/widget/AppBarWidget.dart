import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 15,
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Container(
              padding:  EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: const Icon(Icons.short_text),

            ),
          ),Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(color: Colors.white),
            child:Badge(
            badgeContent: Text("5"),
            badgeStyle: BadgeStyle(badgeColor: Colors.black38,padding: EdgeInsets.all(6),
////////////padgecart//////////////////////////
            ),
              child:
            InkWell(
              onTap: (){},
              child: Icon(
                CupertinoIcons.cart,
                size: 30,
                color:
              Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
