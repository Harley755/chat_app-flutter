import 'package:chat_app/common/routes/names.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:chat_app/pages/welcome/index.dart';
import 'package:chat_app/pages/sign_in/index.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const Application = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),

    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => const SignInPage(),
      binding: SignInBinding(),
    ),

    // CHECK IF NEEDED TO LOGIN OR NOT
    /* GetPage(
      name: AppRoutes.Application,
      page: () => ApplicationPage(),
      binding: ApplicationBinding(),
      middlewares: [RouteAuthMiddleware(priority: 1)],
    ), 

    // PAGES
     GetPage(
      name: AppRoutes.Contact,
      page: () => ContactPage(),
      binding: ContactBinding(),
    ),

    GetPage(
      name: AppRoutes.Message,
      page: () => MessagePage(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: AppRoutes.Me,
      page: () => MePage(),
      binding: MeBinding(),
    ),
    GetPage(
      name: AppRoutes.Photoimgview,
      page: () => PhotoimgviewPage(),
      binding: PhotoimgviewBinding(),
    ), */
  ];
}
