import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/view/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // nested Scroll view ==> CustomScrollView
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomAppBar(),
              ),
              FeatureBooksListView(),
              SizedBox(height: 33),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "Newest Books",
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: NewsetBooksListView(),
          ),
        )
      ],
    );
  }
}
