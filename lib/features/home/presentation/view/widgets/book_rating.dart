import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            FontAwesomeIcons.solidStar,
            size: 18,
            color: Color(0xffffdd4f),
          ),
        ),
        const Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          "(250)",
          style: Styles.textStyle16.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
