import 'dart:math';

import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  final List<Widget> children;
  final double viewPortFraction;

  const MyCarousel({
    super.key,
    required this.children,
    this.viewPortFraction = 0.74,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: ExpandablePageView(
            controller: PageController(viewportFraction: viewPortFraction),
            padEnds: false,
            children: children,
          ),
        ),
      ],
    );
  }
}

class MyCarousel2 extends StatelessWidget {
  // final List<Widget> children;
  // final double viewPortFraction;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;
  final double padding;
  final double width;

  const MyCarousel2({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.padding,
    required this.width,
    // required this.children,
    // this.viewPortFraction = 0.74,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: _SnapPageScrollPhysics(
        elementPadding: padding,
        elementWidth: width,
      ),
      padding: EdgeInsets.symmetric(horizontal: padding),
      scrollDirection: Axis.horizontal,
      itemBuilder: itemBuilder,
      itemCount: itemCount,
      separatorBuilder: (context, index) => SizedBox(width: padding),
    );
  }
}

class _SnapPageScrollPhysics extends ScrollPhysics {
  const _SnapPageScrollPhysics({
    super.parent,
    required this.elementWidth,
    required this.elementPadding,
  });

  final double elementWidth;
  final double elementPadding;

  @override
  _SnapPageScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return _SnapPageScrollPhysics(
      parent: buildParent(ancestor),
      elementWidth: elementWidth,
      elementPadding: elementPadding,
    );
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
  ) {
    final pageWidth = elementWidth + elementPadding;
    final page = position.pixels / pageWidth + velocity / 3000;
    final offset = (position.viewportDimension - elementWidth) / 2;
    final target = page.roundToDouble() * pageWidth - offset + elementPadding;
    return max(0, min(target, position.maxScrollExtent));
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }
    final tolerance = toleranceFor(position);
    final target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        spring,
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }

  @override
  bool get allowImplicitScrolling => false;
}

class MyCarousel3 extends StatelessWidget {
  final double viewPortFraction;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const MyCarousel3({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.viewPortFraction = 0.74,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: viewPortFraction),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      padEnds: false,
      pageSnapping: true,
      clipBehavior: Clip.none,
    );
  }
}

class MyScrollView extends StatelessWidget {
  final double viewPortFraction;
  final int itemCount;
  final Widget? Function(BuildContext context, int index) itemBuilder;

  const MyScrollView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.viewPortFraction = 0.74,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: PageController(viewportFraction: viewPortFraction),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      padEnds: false,
    );
  }
}
