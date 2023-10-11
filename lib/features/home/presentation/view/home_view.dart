import 'package:flutter/material.dart';

import 'widgets/home_view_body.dart';

class HOmeView extends StatelessWidget {
  const HOmeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
