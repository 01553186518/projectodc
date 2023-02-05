import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projectodc/widget/AppBarWidget.dart';
import 'package:projectodc/widget/Categorywidget.dart';
import 'package:projectodc/widget/Drawerwidet.dart';
import 'package:projectodc/widget/NewstItemswidet.dart';
import 'package:projectodc/widget/popularItemWidgwt.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          
          ///App Bar
          AppBarWidget(),
          
          Padding(padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
            child: Container(width: double.infinity,
            height: 50,
              decoration:
              BoxDecoration
                (
                  color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white60.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),

                  ),
                ]
              ),
              child: Padding(padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 280,
                    child:  Padding(
                        padding: EdgeInsets.symmetric(
                        horizontal: 15,

                    ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "what world you like",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.filter_list)
                ],
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
          child: Text("catigry", style: TextStyle(
           fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
          ),
          Categorywidget(),
          //popular Items
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "popular",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            ),
          ),
          //popular with
          popularItemWidgwt(),
          //newested item
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Newested Item",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          //new wested widht
          NewstItemswidet(),
        ],
      ),
      drawer:Drawerwidet() ,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "CartPage");
          },
          child: Icon(
            Icons.shopping_cart,
            size: 28,
          color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
