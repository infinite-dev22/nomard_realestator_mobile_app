import 'package:flutter/material.dart';
import 'package:real_estate_property/chat/data/model/chat_item_model.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/notifications/data/model/notification_model.dart';
import 'package:real_estate_property/payment/data/model/credit_card_model.dart';
import 'package:real_estate_property/payment/presentation/widget/credit_card.dart';
import 'package:real_estate_property/property_view/presentation/pages/about/data/model/facility_model.dart';
import 'package:real_estate_property/property_view/presentation/pages/reviews/data/model/review_model.dart';

import '../../../chat/presentation/widget/chat_item.dart';
import '../../../global/presentation/widget/tiles/my_abstract_tile.dart';
import '../../../global/presentation/widget/tiles/my_tile.dart';
import '../../../property_view/presentation/pages/about/data/model/agent_model.dart';
import '../../../property_view/presentation/pages/about/presentation/widget/agent_item.dart';
import '../../../property_view/presentation/pages/about/presentation/widget/facility_item.dart';
import '../../../property_view/presentation/pages/gallery/presentation/widget/images/small_property_image.dart';
import '../../../global/presentation/widget/images/user_profile_image.dart';
import '../../../global/presentation/widget/property_card/my_property_card.dart';
import '../../../global/presentation/widget/text_fields/my_otp_field.dart';
import '../../../property_view/presentation/pages/reviews/presentation/widget/my_text_area.dart';
import '../../../global/presentation/widget/text_fields/my_text_filed.dart';
import '../../../property_view/presentation/pages/gallery/presentation/widget/video/property_video_thumbnail.dart';
import '../../../notifications/presentation/widget/notification_item.dart';
import '../../../property_view/presentation/pages/reviews/presentation/widget/review_card.dart';

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
    var property = PropertyModel(
        images, "name", "type", "location", "month", 19000.0, 5.0, true);
    var creditCard = CreditCardModel("A Bank", "1234 5678 9012 3456", "LOUIS ANDERSON", "08/27", "123");
    var notification = NotificationModel("Payment Successful", "Lorem ipsum is simply dummy text", "1m");
    var review = ReviewModel("assets/images/house_1.jpg", "David Martin", "1 hour", 4.7, "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.", true);
    var review1 = ReviewModel("assets/images/house_1.jpg", "Jack Martin", "1 hour", 4.2, "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.", false);
    var facility = FacilityModel(Icons.shower_rounded, "4 Baths");
    var agent = AgentModel("assets/images/house_1.jpg", "Micheal Angelo", "Owner");
    var chat = ChatItemModel("assets/images/house_1.jpg", "Micheal Angelo", "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.", "1:23", 5);
    var chat1 = ChatItemModel("assets/images/house_1.jpg", "Micheal Angelo", "Modal text goes here. Lorem ipsum dolor at areit connectouf adoptouy elif in portainer quayer.", "1:23", 0);
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
        // NotificationItem(notification, icon: Icons.check, backgroundColor: Colors.deepPurpleAccent,),
        // ReviewCard(review),
        // ReviewCard(review1),
        // FacilityItem.inline(facility),
        // FacilityItem.nonInline(facility),
        // MyTile.flat(text: "My Flat Tile", onTap: () {}),
        // MyTile.flat(text: "My Flat Tile", onTap: () {}, icon: Icons.settings,),
        // MyTile.flat(text: "My Flat Tile", onTap: () {}, isNavigator: true,),
        // MyTile.flat(text: "My Flat Tile", onTap: () {}, icon: Icons.settings, isNavigator: true,),
        // MyTile.raised(text: "My Raised Tile", onTap: () {},),
        // MyTile.raised(text: "My Raised Tile", onTap: () {}, icon: Icons.settings,),
        // MyTile.navigator(text: "My Navigator Tile", onTap: () {}),
        // MyTile.navigator(text: "My Navigator Tile", onTap: () {},icon: Icons.person,),
        // AgentItem(agent),
        ChatItem(chat),
        ChatItem(chat1),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.all(16.0),
          itemCount: widgetList.length,
          itemBuilder: (context, index) => widgetList[index],
          separatorBuilder: (context, index) => const SizedBox(height: 20),
        ),
      ),
    );
  }
}
