import 'package:flutter/material.dart';
import 'package:gdsc_flutter_task/constants.dart';
import 'package:gdsc_flutter_task/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Mapp'),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: const HomeViewBody(),
    );
  }
}
