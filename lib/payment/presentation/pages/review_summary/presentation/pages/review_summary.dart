import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_back_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/payment/presentation/pages/add_card/presentation/widget/add_card_layout.dart';

import 'package:real_estate_property/payment/presentation/pages/review_summary/presentation/widget/review_summary_layout.dart';

class ReviewSummary extends StatelessWidget {
  const ReviewSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: (GoRouter.of(context).canPop() == true)
            ? MyBackButton(
          onTap: () => GoRouter.of(context).pop(),
        )
            : null,
        title: MyText.h2("Review Summary"),
      ),
      body: const ReviewSummaryLayout(),
    );
  }
}
