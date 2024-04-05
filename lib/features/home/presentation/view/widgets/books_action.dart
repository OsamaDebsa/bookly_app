import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: bookModel.volumeInfo.publishedDate ?? '',
              onPressed: () {},
              textColor: Colors.black,
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16)),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 16,
              text: 'Free Preview',
              onPressed: () async {
                final Uri _url =
                    Uri.parse(bookModel.volumeInfo.previewLink ?? '');
                // if (!await launchUrl(_url)) {
                //   throw Exception('Could not launch $_url');
                // }
                if (!await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                } else {
                  throw Exception('Could not launch $_url');
                }
              },
              textColor: Colors.white,
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
          )
        ],
      ),
    );
  }
}
