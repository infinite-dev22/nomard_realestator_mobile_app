import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/pages/otp.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/pages/reset_password.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_in/presentation/pages/sign_in.dart';
import 'package:real_estate_property/authentication/presentation/pages/sign_up/presentation/pages/sign_up.dart';
import 'package:real_estate_property/chat/presentation/pages/chat.dart';
import 'package:real_estate_property/chat/presentation/pages/chat_room/presentation/pages/chat_room.dart';
import 'package:real_estate_property/explore/data/repository/explore_data.dart';
import 'package:real_estate_property/explore/presentation/pages/explore.dart';
import 'package:real_estate_property/favorite/data/repository/favorite_data.dart';
import 'package:real_estate_property/favorite/presentation/pages/favorite.dart';
import 'package:real_estate_property/global/data/model/property_model.dart';
import 'package:real_estate_property/global/presentation/pages/filter/presentation/pages/filter.dart';
import 'package:real_estate_property/global/presentation/pages/search/presentation/pages/search.dart';
import 'package:real_estate_property/global/presentation/theming/theme.dart';
import 'package:real_estate_property/home/data/repository/featured_data.dart';
import 'package:real_estate_property/home/data/repository/nearby_data.dart';
import 'package:real_estate_property/home/data/repository/recommended_data.dart';
import 'package:real_estate_property/home/presentation/pages/featured/presentation/pages/featured.dart';
import 'package:real_estate_property/home/presentation/pages/home.dart';
import 'package:real_estate_property/home/presentation/pages/nearby_location/presentation/pages/nearby_location.dart';
import 'package:real_estate_property/home/presentation/pages/recommended_properties/presentation/pages/recommended_properties.dart';
import 'package:real_estate_property/notifications/presentation/pages/notifications.dart';
import 'package:real_estate_property/on_board/presentation/pages/on_boarding_one.dart';
import 'package:real_estate_property/payment/presentation/pages/add_card/presentation/pages/add_card.dart';
import 'package:real_estate_property/payment/presentation/pages/payment_methods.dart';
import 'package:real_estate_property/payment/presentation/pages/review_summary/presentation/pages/review_summary.dart';
import 'package:real_estate_property/payment/presentation/pages/ticket/presentation/pages/ticket.dart';
import 'package:real_estate_property/profile/presentation/pages/edit_profile/presentation/pages/edit_profile.dart';
import 'package:real_estate_property/profile/presentation/pages/help_center/presentation/pages/help_center.dart';
import 'package:real_estate_property/profile/presentation/pages/profile.dart';
import 'package:real_estate_property/profile/presentation/pages/settings/presentation/pages/settings.dart';
import 'package:real_estate_property/property_view/presentation/pages/book_tour/presentation/pages/book_tour.dart';
import 'package:real_estate_property/property_view/presentation/pages/booking/presentation/page/booking.dart';
import 'package:real_estate_property/property_view/presentation/pages/property_view.dart';
import 'package:real_estate_property/property_view/presentation/pages/schedule/presentation/page/schedule.dart';
import 'package:real_estate_property/root/presentation/pages/root.dart';

import 'authentication/presentation/pages/sign_in/presentation/pages/forgot_password.dart';

void main() {
  runApp(const MyApp());
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

GoRouter _router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: "/",
  routes: [
    GoRoute(
      name: 'on_boarding',
      path: "/",
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      name: 'sign_in',
      path: "/sign_in",
      builder: (context, state) => const SignIn(),
    ),
    GoRoute(
      name: 'signup',
      path: "/signup",
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      name: 'forgot',
      path: "/forgot",
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      name: 'otp',
      path: "/otp",
      builder: (context, state) => const OTP(),
    ),
    GoRoute(
      name: 'reset',
      path: "/reset",
      builder: (context, state) => const ResetPassword(),
    ),
    GoRoute(
      name: 'featured',
      path: "/featured",
      builder: (context, state) => const Featured(),
    ),
    GoRoute(
      name: 'near_by',
      path: "/near_by",
      builder: (context, state) => const NearByLocation(),
    ),
    GoRoute(
      name: 'recommended',
      path: "/recommended",
      builder: (context, state) => const RecommendedProperties(),
    ),
    GoRoute(
      name: 'edit_profile',
      path: "/edit_profile",
      builder: (context, state) => const EditProfile(),
    ),
    GoRoute(
      name: 'settings',
      path: "/settings",
      builder: (context, state) => const Settings(),
    ),
    GoRoute(
      name: 'help_center',
      path: "/help_center",
      builder: (context, state) => const HelpCenter(),
    ),
    GoRoute(
      name: 'chat_room',
      path: "/chat_room",
      builder: (context, state) => const ChatRoom(),
    ),
    GoRoute(
      name: 'property_view',
      path: "/property_view",
      builder: (context, state) {
        final type = state.uri.queryParameters['type'];
        final index = state.uri.queryParameters['index'];
        print(type);
        print(index);

        PropertyModel property;
        if (type == "featured") {
          property = featuredProperties[int.parse(index!)];
        } else if (type == "near_by") {
          property = nearbyProperties[int.parse(index!)];
        } else if (type == "recommended") {
          property = recommendedProperties[int.parse(index!)];
        }  else if (type == "explore") {
          property = exploreProperties[int.parse(index!)];
        } else {
          property = favoriteProperties[int.parse(index!)];
        }
        return PropertyView(property: property);
      },
    ),
    GoRoute(
      name: 'book',
      path: "/book",
      builder: (context, state) => const Booking(),
    ),
    GoRoute(
      name: 'payments',
      path: "/payments",
      builder: (context, state) => const PaymentMethods(),
    ),
    GoRoute(
      name: 'add_card',
      path: "/add_card",
      builder: (context, state) => const AddCard(),
    ),
    GoRoute(
      name: 'schedule',
      path: "/schedule",
      builder: (context, state) => const Schedule(),
    ),
    GoRoute(
      name: 'tour',
      path: "/tour",
      builder: (context, state) => const BookTour(),
    ),
    GoRoute(
      name: 'summary',
      path: "/summary",
      builder: (context, state) => const ReviewSummary(),
    ),
    GoRoute(
      name: 'ticket',
      path: "/ticket",
      builder: (context, state) => const Ticket(),
    ),
    GoRoute(
      name: 'notification',
      path: "/notification",
      builder: (context, state) => const Notifications(),
    ),
    GoRoute(
      name: 'search',
      path: "/search",
      builder: (context, state) => const Search(),
    ),
    GoRoute(
      name: 'filter',
      path: "/filter",
      builder: (context, state) => const Filter(),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => Root(
        child: child,
      ),
      routes: [
        GoRoute(
          name: 'home',
          path: "/home",
          builder: (context, state) => const Home(),
        ),
        GoRoute(
          name: 'explore',
          path: "/explore",
          builder: (context, state) => const Explore(),
        ),
        GoRoute(
          name: 'favorite',
          path: "/favorite",
          builder: (context, state) => const Favorite(),
        ),
        GoRoute(
          name: 'chat',
          path: "/chat",
          builder: (context, state) => const Chat(),
        ),
        GoRoute(
          name: 'profile',
          path: "/profile",
          builder: (context, state) => const Profile(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate Property',
      theme: lightTheme,
      // darkTheme: darkTheme,
      routerConfig: _router,
    );
  }
}
