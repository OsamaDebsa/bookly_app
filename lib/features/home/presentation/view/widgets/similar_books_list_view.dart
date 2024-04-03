import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomBookItem(imageUrl: 'https://media.licdn.com/dms/image/D4D03AQFkPQQkQGrUPA/profile-displayphoto-shrink_400_400/0/1687865415732?e=2147483647&v=beta&t=i9tdy6yfsFEifHuthEt6C--VShUCOrJ2PuNXSrFjemE',);
        },
      ),
    );
  }
}
