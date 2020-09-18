import 'package:flutter/material.dart';

class card_invoices extends StatelessWidget
{
  const card_invoices({
    Key key,
    this.url,
    @required this.width,
    @required this.height,
  }) : super(key: key);
  final String url;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        Container(
          child: ClipRRect(
            borderRadius:
            new BorderRadius.all(Radius.circular(15.0)),
            child: Image(
              image: NetworkImage(
                url,
              ),
            ),
          ),
        ),
        SizedBox(
          width: width / 20,
        ),
      ],
    );
  }
}
