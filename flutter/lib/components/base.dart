import "package:flutter/material.dart";

Widget container({child}) => SingleChildScrollView(
  child: FractionallySizedBox(
    widthFactor: 1,
    child: Container(
      padding: EdgeInsets.all(20),
      child: child
    ),
  ),
);
