import "package:flutter/material.dart";
import "../components/base.dart";
import "../components/drawer.dart";
import "./about.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world!"),
      ),
      drawer: drawer(context),
      body: container(
        child: RaisedButton(
          child: Text("About Page"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  AboutPage()));
          },
        )
      )
    );
  }
}
