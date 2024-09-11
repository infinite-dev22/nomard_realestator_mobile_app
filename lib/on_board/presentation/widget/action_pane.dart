import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_icon_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/on_board/presentation/bloc/on_boarding/on_boarding_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ActionPane extends StatelessWidget {
  final BuildContext blocContext;
  final OnBoardingState state;
  const ActionPane({super.key, required this.blocContext, required this.state});

  @override
  Widget build(BuildContext context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => GoRouter.of(context).goNamed("sign_in"),
              child: MyText.bold(
                "Skip",
                color: secondaryDark,
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: state.index,
              count: 4,
              effect: ExpandingDotsEffect(
                  dotColor: secondaryLight,
                  activeDotColor: Theme
                      .of(context)
                      .colorScheme
                      .primary, dotHeight: 10, dotWidth: 10),
            ),
            MyIconButton(
              icon: MingCute.arrow_right_line,
              onTap: () => blocContext.read<OnBoardingBloc>().add(NextEvent()),
            ),
          ],
        );
  }
}
