import 'package:flutter/material.dart';
import 'package:portfolio/presentation/index_presentation.dart';
import 'package:portfolio/presentation/views/desktop/desktop_grid_view.dart';

class DesktopRootView extends StatelessWidget {
  const DesktopRootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
            DesktopHeaderView(),
            DesktopGridView(),
            // DesktopFirstView()
          ],
        ),
      ),
    );
  }
}
