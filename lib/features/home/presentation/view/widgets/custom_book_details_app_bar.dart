import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // first by using Row and put SafeArea widget in BookDetailsView
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
    // Second by using AppBar
    //  AppBar(
    //   automaticallyImplyLeading: false,
    //   elevation: 0,
    //   backgroundColor: Colors.transparent,
    //   leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
    //   actions: [
    //     IconButton(
    //         onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
    //   ],
    // );
  }
}
