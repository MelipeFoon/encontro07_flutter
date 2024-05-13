import 'package:flutter/material.dart';
import 'package:encontro07_flutter/breakpoints.dart';
import 'package:encontro07_flutter/widgets/app_bar/mobile_app_bar.dart';
import 'package:encontro07_flutter/widgets/app_bar/web_app_bar.dart';
import 'package:encontro07_flutter/widgets/star_widget.dart';
import 'package:encontro07_flutter/widgets/top_section/mobile_top_section.dart';
import 'package:encontro07_flutter/widgets/top_section/web_top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              ),
        body: Column(
          children: [
            constraints.maxWidth > breakpointMobile
                ? const WebTopSection()
                : const MobileTopSection(),
            const SizedBox(
              height: 16,
            ),
            const Wrap(
              runSpacing: 20,
              spacing: 20,
              alignment: WrapAlignment.center,
              children: [
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
                StarWidget(),
              ],
            )
          ],
        ),
      );
    });
  }
}