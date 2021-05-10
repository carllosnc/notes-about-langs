import "package:flutter/material.dart";

class TopBarsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top bars"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: null
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: null
          )
        ],
      ),
      body: Center(
        child: Text("Top bars example."),
      ),
    );
  }
}
