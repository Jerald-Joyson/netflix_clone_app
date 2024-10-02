import 'package:flutter/material.dart';
import 'package:myapp/presentation/widgets/custom_app_bar.dart';

class ScreenDownloads extends StatelessWidget {
  const ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(title: "Downloads"),
      ),
      body: Center(
        child: Text("Downloads Page"),
      ),
    );
  }
}
