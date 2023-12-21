import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product/Features/home/data/repos/home_repo.dart';
 import 'package:slash_product/Features/home/presentation/manger/cubits/cubit/products_cubit.dart';
 import 'package:slash_product/core/utils/api_service.dart';
import 'package:slash_product/core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, 

  });

  @override
  Widget build(BuildContext context) {
 return
        BlocProvider(
            create: (context) => ProductsCubit(HomeRepo(ApiService(Dio())) )
              ..fetchProduct(), 
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
