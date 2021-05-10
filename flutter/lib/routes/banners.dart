import "package:flutter/material.dart";

Widget banner(BuildContext context) => MaterialBanner(
  content: const Text("You have to lost connection to the internet. This app"),
  leading: CircleAvatar(
    backgroundColor: Colors.red,
    child: Icon(
      Icons.signal_wifi_off,
      color: Colors.white,
    )
  ),
  actions: [
    Spacer(),
    FlatButton(
      child: const Text("TURN ON WIFI!"),
      onPressed: null,
    )
  ]
);

class Banners extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banners"),
      ),
      body: Container(child: banner(context))
    );
  }
}