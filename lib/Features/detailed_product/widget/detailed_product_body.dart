import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product/Features/detailed_product/widget/detailed_image.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/manger/cubits/cubit/products_cubit.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_error.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_image.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/price_EGP.dart';
import 'package:go_router/go_router.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/product_name.dart';

class DetailedProductBody extends StatelessWidget {
  DetailedProductBody({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
      if (state is ProductsSuccess) {
        return Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                CustomAppBar(
                    title: "Product Details",
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 35,
                      color: Colors.white,
                      //AppRouter.kHome
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    }),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: CustomImage(
                      imheight: 300,
                      imwidth: 300,
                      border: 20,
                      image: productModel.productVariations![0]
                              ?.productVarientImages?.first.imagePath ??
                          ""),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 100,
                  child: DetailedImage(productModel: productModel),
                ),
                ProductName(
                  productModel: productModel,
                  siWidth: 270,
                  imheight: 90,
                  imwidth: 90,
                ),
                SizedBox(
                  height: 5,
                ),
                PriceEGP(productModel: productModel)
              ]),
            ),
          ),
        );
      } else if (state is ProductsFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
