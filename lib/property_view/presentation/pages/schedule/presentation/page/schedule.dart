import 'package:flutter/material.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/property_view/presentation/pages/booking/presentation/widget/booking_layout.dart';

import '../widget/schedule_layout.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(builder: (context) => MyBackButton(onTap: () {  },),),
        title: MyText.h2("Schedule"),
      ),
      body: const ScheduleLayout(),
    );
  }
}
