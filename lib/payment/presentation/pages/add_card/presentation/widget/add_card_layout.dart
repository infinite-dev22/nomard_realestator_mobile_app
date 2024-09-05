import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:real_estate_property/global/presentation/widget/buttons/my_button.dart';
import 'package:real_estate_property/global/presentation/widget/text_fields/my_text_field.dart';
import 'package:real_estate_property/payment/presentation/pages/add_card/presentation/widget/credit_card.dart';

class AddCardLayout extends StatelessWidget {
  const AddCardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var bankNameController = TextEditingController(text: "A Bank");
    var cardNumberController =
        TextEditingController(text: "1234 5678 9012 3456");
    var holderNameController =
        TextEditingController(text: "JONATHAN MARK MWIGO");
    var expiryDateController = TextEditingController(text: "09/27");
    var cvvController = TextEditingController(text: "09/27");

    var widgets = <Widget>[
      CreditCard(
        bankNameController: bankNameController,
        cardNumberController: cardNumberController,
        holderNameController: holderNameController,
        expiryDateController: expiryDateController,
      ),
      Column(
        children: [
          Column(
            children: [
              const MyTextField(
                hint: "Card Holder Name",
                prefixIcon: Icon(MingCute.user_2_line),
              ),
              const SizedBox(height: 16),
              const MyTextField(
                hint: "Card Number",
                prefixIcon: Icon(MingCute.card_pay_line),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .44,
                      child: const MyTextField(
                        hint: "Expiry Date",
                        prefixIcon: Icon(MingCute.calendar_line),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .44,
                      child: const MyTextField(
                        hint: "CVV",
                        prefixIcon: Icon(MingCute.card_pay_line),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ];

    return Column(
      children: [
        Expanded(
          flex: 12,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            itemCount: widgets.length,
            itemBuilder: (context, index) => widgets[index],
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 16),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: MyButton(
              text: "Add Card",
              onTap: () => GoRouter.of(context).pop(),
            ),
          ),
        ),
      ],
    );
  }
}
