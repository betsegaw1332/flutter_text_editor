import 'package:flutter/material.dart';
import 'package:flutter_text_editor/src/presentation/pages/home-page/components/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeBody()),
    );
  }
}
