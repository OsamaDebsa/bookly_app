import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 18,
            color: Color(0xffffdd4f),
          ),
        ),
        SizedBox(width: 2),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text("(250)", style: Styles.textStyle16),
        ),
      ],
    );
  }
}
