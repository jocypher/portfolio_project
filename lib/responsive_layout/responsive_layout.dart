import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  final Widget tabletScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScreenLayout,
      required this.webScreenLayout,
      required this.tabletScreenLayout});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.minWidth < 600) {
        return widget.mobileScreenLayout;
      } else if (constraints.maxWidth < 1200) {
        return widget.tabletScreenLayout;
      } else {
        return widget.webScreenLayout;
      }
    });
  }
}
