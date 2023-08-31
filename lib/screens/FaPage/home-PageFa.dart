import 'package:flutter/material.dart';
import '../../components/contents.dart';
import '../../widgets/responsive_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ResponsiveWidget(
        mobile: Column(
          children: [
            buildBannerSlider(),
            const SizedBox(height: 24),
            buildDescription()
          ],
        ),
        tab: Row(
          children: [
            buildBannerSlider(),
            const SizedBox(width: 24),
            Expanded(child: buildDescription())
          ],
        ),
        desktop: Row(
          children: [
            buildBannerSlider(),
            const SizedBox(width: 24),
            Expanded(child: buildDescription())
          ],
        ),
      ),
    );
  }
}
