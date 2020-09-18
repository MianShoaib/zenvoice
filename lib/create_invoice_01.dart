import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenvoice/Cards/card_invoices_start.dart';

class create_invoice_first_page extends StatefulWidget {
  @override
  create_invoice_firstpage createState() => create_invoice_firstpage();
}

class create_invoice_firstpage extends State<create_invoice_first_page> {
  @override
  Widget build(BuildContext context) {
    List<String> all_invoices = List();
    all_invoices.add('https://image.freepik.com/free-vector/colorful-invoice-template-design-your-business_1302-8094.jpg');
    all_invoices.add('https://i.pinimg.com/474x/18/3d/9d/183d9d45a53690b94ec41a01aa636b75.jpg');
    all_invoices.add('https://www.freshbooks.com/wp-content/uploads/2019/04/invoice-template-orange.png');
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              Container(
                //Black Container
                padding: EdgeInsets.only(left: width / 9, top: height / 9),
                height: height / 2,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'ZENVOICE',
                      style: TextStyle(
                          fontFamily: "PublicSans",
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 10.0,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: height / 25,
                    ),
                    Text(
                      'Intelligent Invoice Creator',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //White Container
                padding: EdgeInsets.only(
                    left: width / 9, top: height / 7, right: height / 20),
                height: height / 2,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Create invoices in seconds',
                      style: TextStyle(
                          fontFamily: "PublicSans",
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: height / 500,
                    ),
                    Text(
                      'Customs designs. Print or email.',
                      style: TextStyle(
                          fontFamily: "PublicSans",
                          fontSize: 20.0,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: height / 500,
                    ),
                    Text(
                      'Free.',
                      style: TextStyle(
                          fontFamily: "PublicSans",
                          fontSize: 22.0,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: height / 75,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: height / 50,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius:
                            new BorderRadius.all(Radius.circular(20.0)),
                      ),
                      height: height / 12,
                      width: width / 5,
                      //color: Colors.blue,
                      child: FlatButton(
                        onPressed: () {
                          print("Start Button Tapped");
                        },
                        child: Text(
                          'Start',
                          style: TextStyle(fontSize: 30.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          new Container(
            color: Colors.transparent,
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(top: height * 0.25),
            child: new Container(
              alignment: Alignment.topCenter,
              color: Colors.transparent,
              padding: new EdgeInsets.only(top: 10.0),
              height: height * 0.35,
              child: ListView.builder(
                  controller: ScrollController(initialScrollOffset: 2),
                  itemCount: all_invoices.length,
                  shrinkWrap: false,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return card_invoices(
                        width: width, height: height, url: all_invoices[index]);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
