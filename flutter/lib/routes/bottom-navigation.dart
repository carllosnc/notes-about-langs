import "package:flutter/material.dart";

class BottomNavigationPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom navigation"),
      ),
      body: Center(
        child: Text("Bottom navigation examples"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: 0,
        onTap: (index){
          print(index);
        },
        items: [
          BottomNavigationBarItem(
            title: Text("Favorites"),
            icon: Icon(Icons.favorite),
          ),

          BottomNavigationBarItem(
            title: Text("Musics"),
            icon: Icon(Icons.music_note)
          ),

          BottomNavigationBarItem(
            title: Text("Places"),
            icon: Icon(Icons.location_on)
          ),

          BottomNavigationBarItem(
            title: Text("News"),
            icon: Icon(Icons.library_books)
          ),
        ]
      ),
    );
  }

}
