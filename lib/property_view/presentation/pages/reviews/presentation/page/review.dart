import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/bloc/review/review_bloc.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/presentation/widget/review_layout.dart';

class Review extends StatelessWidget {
  final PropertyModel property;

  const Review(this.property, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewBloc(),
      child: ReviewLayout(property),
    );
  }
}
