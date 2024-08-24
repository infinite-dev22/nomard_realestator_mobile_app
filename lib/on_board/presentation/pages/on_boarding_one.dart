import 'package:flutter/material.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/payment/data/model/credit_card_model.dart';
import 'package:real_estate_property/payment/presentation/widget/credit_card.dart';

import '../../../global/presentation/widget/images/small_property_image.dart';
import '../../../global/presentation/widget/images/user_profile_image.dart';
import '../../../global/presentation/widget/property_card/my_property_card.dart';
import '../../../global/presentation/widget/text_fields/my_otp_field.dart';
import '../../../global/presentation/widget/text_fields/my_text_area.dart';
import '../../../global/presentation/widget/text_fields/my_text_filed.dart';
import '../../../global/presentation/widget/video/property_video_thumbnail.dart';
import '../../../notifications/presentation/widget/notification_item.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({super.key});

  @override
  Widget build(BuildContext context) {
    var images = List<String>.of([
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg",
      "assets/images/house_1.jpg"
    ]);
    // var property = PropertyModel(
    //     images, "name", "type", "location", "month", 19000.0, 5.0, true);
    // var creditCard = CreditCardModel("A Bank", "1234 5678 9012 3456", "LOUIS ANDERSON", "08/27", "123");
    var notification = NotificationModel("Payment Successful", "Lorem ipsum is simply dummy text", "1m");
    final widgetList = List<Widget>.of(
      [
        // MyText.h1("Heading 1"),
        // MyText.h2("Heading 2"),
        // MyText.h3("Heading 3"),
        // MyText.headline("Head Line"),
        // MyText.subHeading("Sub-Heading"),
        // MyText.caption("Caption"),
        // MyText.body("Body"),
        // MyButton(
        //   text: "My Button",
        //   onTap: () {},
        // ),
        // MyButton(
        //   text: "My Outlined Button",
        //   outlined: true,
        //   onTap: () {},
        // ),
        // MyButton(
        //   text: "My Busy Button",
        //   busy: true,
        //   onTap: () {},
        // ),
        // MyButton(
        //   text: "My Disabled Button",
        //   disabled: true,
        //   onTap: () {},
        // ),
        // MyIconButton(
        //   icon: Icons.access_alarms_rounded,
        //   onTap: () {},
        // ),
        // MyIconButton(
        //   icon: Icons.access_alarms_rounded,
        //   outlined: true,
        //   onTap: () {},
        // ),
        // MyIconButton(
        //   icon: Icons.access_alarms_rounded,
        //   busy: true,
        //   radius: 30,
        //   onTap: () {},
        // ),
        // MyIconButton(
        //   icon: Icons.access_alarms_rounded,
        //   disabled: true,
        //   onTap: () {},
        // ),
        // MyPropertyCard(property),
        // MyTextFiled(hint: "This is my textfiled", prefixIcon: Icon(Icons.search, size: 25,),),
        // MyOtpField(),
        // MyTextArea(hint: "This is my textfiled"),
        // UserProfileImage(images.first),
        // Center(child: CreditCard(creditCard),),
        NotificationItem(notification, icon: Icons.check, backgroundColor: Colors.deepPurpleAccent,),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: widgetList.length,
          itemBuilder: (context, index) => widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        ),
      ),
    );
  }
}
