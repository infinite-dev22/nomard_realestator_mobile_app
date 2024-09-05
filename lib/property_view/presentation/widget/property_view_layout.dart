import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/presentation/page/about.dart';
import 'package:real_estate_property/property_view/presentation/pages/gallery/presentation/page/gallery.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/page/review.dart';
import 'package:real_estate_property/property_view/presentation/widget/property_image_view.dart';

class PropertyViewLayout extends StatefulWidget {
  const PropertyViewLayout({super.key});

  @override
  State<PropertyViewLayout> createState() => _PropertyViewLayoutState();
}

class _PropertyViewLayoutState extends State<PropertyViewLayout>
    with SingleTickerProviderStateMixin {
  var property = PropertyModel(
    List<String>.of([
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg"
    ]),
    "name",
    "type",
    "location",
    "month",
    19000.0,
    5.0,
    true,
  );

  late final TabController _tabController;

  final _tabs = List<Tab>.of([
    const Tab(text: "About"),
    const Tab(text: "Gallery"),
    const Tab(text: "Review"),
  ]);

  final _tabViews = List<Widget>.of([
    const About(),
    const Gallery(),
    const Review(),
  ]);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          PropertyImageView(
            property,
            height: size.height * .3,
          ),
          TabBar(
            controller: _tabController,
            tabs: _tabs,
            indicatorSize: TabBarIndicatorSize.tab,
            enableFeedback: true,
            dividerHeight: .4,
            dividerColor: secondary,
          ),
          Expanded(
            flex: 2,
            child: TabBarView(
              controller: _tabController,
              children: _tabViews,
            ),
          ),
        ],
      ),
    );
  }
}
