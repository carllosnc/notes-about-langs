import "package:flutter/material.dart";
import "routes/home.dart";

main(List<String> args) {
  return runApp(
    MaterialApp(
      title: "learning flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.white,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.red,
          textTheme: ButtonTextTheme.primary
        )
      ),
      home: HomePage()
    )
  );
}
