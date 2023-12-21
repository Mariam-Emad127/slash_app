import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_product/Features/detailed_product/view/detailed_product.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/view/home_view.dart';

abstract class AppRouter {
  static const kHome = '/home_view';
  static const kDetail = '/detailed_product';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: "/",
          builder: (context, index) {
            return HomeView();
          }),
      GoRoute(
        path: kDetail,
        builder: ((BuildContext context, GoRouterState state) {
          return DetailedProduct(productModel: state.extra as ProductModel);
        }),
      )
    ],
  );
}
