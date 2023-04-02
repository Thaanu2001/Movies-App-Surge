import 'package:flutter/material.dart';

import '../../../movie_list/presentation/screens/movie_list_page.dart';
import '../widgets/header.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const MovieListPage(),
    );
  }
}
