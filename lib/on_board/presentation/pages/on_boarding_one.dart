import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_estate_property/on_board/presentation/bloc/on_boarding/on_boarding_bloc.dart';
import 'package:real_estate_property/on_board/presentation/widget/on_boarding_layout.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => OnBoardingBloc(),
        child: const OnBoardingLayout(),
      ),
    );
  }
}
