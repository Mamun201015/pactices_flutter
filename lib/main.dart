import 'package:class_11/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomepage(),
    );
  }
}
