import 'package:bookly_app/features/home/presentation/view/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/books_action.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/similar_book_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              CustomAppBarBookDetails(),
              BookDetailsSection(),
              SizedBox(height: 33),
              BooksAction(),
              Expanded(child: SizedBox(height: 33)),
              SimilarBooksSection(),
            ],
          ),
        ),
      )
    ]);
  }
}
