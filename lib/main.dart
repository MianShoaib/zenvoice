import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zenvoice/create_invoice_01.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new create_invoice_first_page(),
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => new create_invoice_first_page()
      },
    );
  }
}
