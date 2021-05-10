import "package:flutter/material.dart";
import "../components/base.dart";

class AboutPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: container(
        child: Text("About page")
      ),
    );
  }

}