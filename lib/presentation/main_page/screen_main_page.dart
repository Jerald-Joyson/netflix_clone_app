import 'package:flutter/material.dart';
import 'package:myapp/presentation/downloads/screen_downloads.dart';
import 'package:myapp/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:myapp/presentation/home/screen_home.dart';
import 'package:myapp/presentation/main_page/widgets/bottom_nav.dart';
import 'package:myapp/presentation/new_hot/screen_new_hot.dart';
import 'package:myapp/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenNewHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    const ScreenDownloads(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
