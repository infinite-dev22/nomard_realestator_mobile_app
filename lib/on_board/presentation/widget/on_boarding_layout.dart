import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/texts/my_text.dart';
import 'package:real_estate_property/on_board/data/model/on_boarding_model.dart';
import 'package:real_estate_property/on_board/presentation/bloc/on_boarding/on_boarding_bloc.dart';
import 'package:real_estate_property/on_board/presentation/widget/action_pane.dart';

class OnBoardingLayout extends StatelessWidget {
  const OnBoardingLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var _onBoards = <OnBoardingModel>[
      OnBoardingModel(
          "assets/images/on_board_0.jpg",
          "Discover Your Perfect Dream House",
          "Discere id fugit solum ignota prompta ultrices meliore graece rutrum posidonium"),
      OnBoardingModel(
          "assets/images/on_board_1.jpg",
          "Find Your Perfect Stay On A Budget",
          "Finibus principes enim detraxit ridens consectetuer potenti constituam solet nostra nostrum"),
      OnBoardingModel(
          "assets/images/on_board_2.jpg",
          "Book Real Estate SwiftlyJust one Click",
          "Duo vitae definiebas affert docendi ligula est mazim offendit veniam novum"),
      OnBoardingModel(
          "assets/images/on_board_3.jpg",
          "Welcome To Your Own House",
          "Consectetuer odio scelerisque expetendis delectus decore dicam inceptos legere luptatum facilisis"),
    ];
    return BlocConsumer<OnBoardingBloc, OnBoardingState>(
      listener: (blocContext, state) {
        // TODO: implement listener
      },
      builder: (blocContext, state) {
        return LayoutBuilder(builder: (context, constraints) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                decoration: const BoxDecoration(
                  color: secondaryDark,
                ),
              ),
              Container(
                width: double.infinity,
                height: constraints.maxHeight * .7,
                decoration: BoxDecoration(
                  color: secondaryDark,
                  image: DecorationImage(
                      image: AssetImage(_onBoards[state.index].image),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: constraints.maxHeight * .7,
                left: 0,
                right: 0,
                bottom: 0,
                child: CustomPaint(
                  painter: MyCustomPainter(),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 60),
                          child: MyText.h1(_onBoards[state.index].title),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 2, horizontal: 60),
                          child: MyText.regular(
                            _onBoards[state.index].subTitle,
                            color: secondary,
                          ),
                        ),
                        (state.index < 3)
                            ? Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 40, horizontal: 16),
                                child: ActionPane(
                                    blocContext: blocContext, state: state),
                              )
                            : Column(
                                children: [
                                  MyButton(
                                    text: "Sign Up",
                                    onTap: () =>
                                        GoRouter.of(context).goNamed("signup"),
                                  ),
                                  const SizedBox(height: 8),
                                  MyButton(
                                    text: "Sign In",
                                    onTap: () =>
                                        GoRouter.of(context).goNamed("sign_in"),
                                    outlined: true,
                                  ),
                                  const SizedBox(height: 16),
                                ],
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
      },
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    var path = Path()..moveTo(0, size.height);

    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * .5, size.height * -.5, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
