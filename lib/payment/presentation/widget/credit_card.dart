import 'package:flutter/material.dart';
import 'package:flutter_any_logo/flutter_logo.dart';
import 'package:real_estate_property/global/presentation/constants/app_colors.dart';

import '../../../global/presentation/widget/texts/my_text.dart';

class CreditCard extends StatelessWidget {
  final TextEditingController bankNameController;
  final TextEditingController cardNumberController;
  final TextEditingController holderNameController;
  final TextEditingController expiryDateController;

  const CreditCard({
    super.key,
    required this.bankNameController,
    required this.cardNumberController,
    required this.holderNameController,
    required this.expiryDateController,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: 220,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow.withOpacity(.1),
                  spreadRadius: 1,
                  blurRadius: .1,
                  offset: const Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText.regular(
                  bankNameController.text,
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText.bold(
                      cardNumberController.text,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText.regular(
                              "CARD HOLDER",
                              color: secondaryLightest,
                            ),
                            MyText.semiBold(
                              holderNameController.text,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MyText.regular(
                              "VALID THRU",
                              color: secondaryLightest,
                            ),
                            MyText.semiBold(
                              expiryDateController.text,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: -60,
              right: -30,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondaryLight.withOpacity(.2),
                ),
              )),
          Positioned(
              top: -60,
              right: 50,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: secondaryLightest.withOpacity(.1),
                ),
              )),
          Positioned(
            top: 15,
            right: 15,
            child: AnyLogo.tech.masterCard.image(width: 40, height: 40),
          ),
        ],
      ),
    );
  }
}
