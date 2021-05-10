import "package:flutter/material.dart";

Color bgcolor = Colors.grey[100];

Widget card({String imageurl}) => Card(
  clipBehavior: Clip.antiAlias,
  child: Column(
    children: [

      // Header
      ListTile(
        trailing: Icon(Icons.more_vert),
        title: const Text(
          "Card title",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          "Secondary Text",
          style: TextStyle(
            color: Colors.black.withOpacity(0.6)
          )
        ),
      ),

      // Body
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          "Greyhound divisively hello coldly wonderfully marginally far upon excluding.",
          style: TextStyle(
            color: Colors.black.withOpacity(0.7)
          )
        )
      ),

      Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.green,
          image: new DecorationImage(
            fit: BoxFit.fitWidth,
            image: new NetworkImage(imageurl)
          )
        )
      ),

      // footer
      ButtonBar(
        alignment: MainAxisAlignment.end,
        children: [
          RaisedButton(
            onPressed: (){},
            child: Text("ACTION 1")
          ),
          FlatButton(
            onPressed: null,
            child: Text("ACTION 2")
          )
        ]
      ),

    ],
  )
);

class CardsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("Cards"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card(
              imageurl: "https://images.unsplash.com/photo-1598759473345-d8d3239a25bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=100"
            ),
            card(
              imageurl: "https://images.unsplash.com/photo-1598751337513-3fbe7d2baffd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=100"
            )
          ]
        )
      )
    );
  }

}
