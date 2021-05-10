import "package:flutter/material.dart";

Widget floatButton() => FloatingActionButton(
  onPressed: (){},
  backgroundColor: Colors.black,
  child: Icon(
    Icons.add,
    color: Colors.white,
  ),
);

Widget bottomBar() => BottomAppBar(
  color: Colors.red,
  child: Row(
    children: [
      IconButton(
        color: Colors.white,
        icon: Icon(Icons.menu),
        onPressed:() {}
      ),

      Spacer(),

      IconButton(
        color: Colors.white,
        icon: Icon(Icons.search),
        onPressed:() {}
      ),

      IconButton(
        color: Colors.white,
        icon: Icon(Icons.more_vert),
        onPressed:() {}
      )
    ],
  ),
);

class BottomBarsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom bars")
      ),
      bottomNavigationBar: bottomBar(),
      body: Center(child: Text("Bottom bars example ")),
      floatingActionButton: floatButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}