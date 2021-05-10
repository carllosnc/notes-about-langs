import "package:flutter/material.dart";
import "../routes/bottom-bars.dart";
import "../routes/top-bars.dart";
import "../routes/banners.dart";
import "../routes/bottom-navigation.dart";
import "../routes/cards.dart";
import "../routes/statefull-widget.dart";

final String bg = "https://images.unsplash.com/photo-1436397543931-01c4a5162bdb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=100";

Widget drawer(BuildContext context) => Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: NetworkImage(bg),
            fit: BoxFit.cover
          )
        ),
        child: Container(),
      ),
      ListTile(
        title: Text("Bottom app bars"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BottomBarsPage()));
        },
      ),
      ListTile(
        title: Text("Top app bars"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => TopBarsPage()));
        },
      ),
      ListTile(
        title: Text("Banners"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Banners()));
        },
      ),
      ListTile(
        title: Text("Bottom navigation"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationPage()));
        },
      ),
      ListTile(
        title: Text("Cards"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CardsPage()));
        },
      ),

      ListTile(
        title: Text("Statefull Widgets"),
        leading: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => StateFullPage()));
        },
      )
    ]
  )
);

