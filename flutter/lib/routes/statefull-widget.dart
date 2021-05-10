import "package:flutter/material.dart";

class Foo extends StatefulWidget{
  @override
  _Foo createState() => _Foo();
}

class _Foo extends State<Foo>{
  int _index = 0;

  Color getColor(){
    if(_index > 50) return Colors.red[700];
    if(_index > 40) return Colors.orange[700];
    if(_index > 20) return Colors.blue[700];
    if(_index > 10) return Colors.green[700];

    return Colors.black87;
  }

  @override
  Widget build(BuildContext context){
    return
    Center (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_index",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              color: getColor(),
              fontSize: _index + 50.0
            ),
          ),
          RaisedButton(
            child: Text("Tap to increment"),
            onPressed: (){
              setState((){
                _index += 1;
              });
            },
            onLongPress: (){
              setState((){
                _index += 10;
              });
            },
          )
        ],
      )
    );
  }
}

class StateFullPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull widget")
      ),
      body: Foo()
    );
  }
}
