import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/manger/cubits/cubit/products_cubit.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/product_info.dart';


class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key });

  @override
  Widget build(BuildContext context) {

    return
    //  BlocProvider.of<ProductsCubit>(context).productModel.fetchProduct;(
    //    child:
    BlocBuilder<ProductsCubit, ProductsState>(

        builder: (context, state) {
             try{
            if (state is ProductsSuccess) {
              return Scaffold(
                backgroundColor: Colors.black,
                body: Container()
                // Padding(
                //   padding: const EdgeInsets.all(10),
                //   child: Column(
                //     children: [
                //       SizedBox(height: 30),
                //       CustomAppBar(title: "Splash"),
                //       Expanded(
                //         child: GridView.builder(
                //           itemCount: state.product.length,
                //           clipBehavior: Clip.none,
                //           gridDelegate:
                //           SliverGridDelegateWithFixedCrossAxisCount(
                //             crossAxisCount: 2,
                //             crossAxisSpacing: 20,
                //             childAspectRatio: 2 / 4,
                //             mainAxisSpacing: 10,
                //           ),
                //           itemBuilder: (context, index) {
                //             return ProductInfo(
                //               productModel: state.product[index],
                //             );
                //           },
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              );
            }
             }catch(e){
             print(e.toString()); }

            return   Text("e.toString()");
        }




            //   else if (state is ProductsFailure) {
            //   return CustomErrorWidget(errMessage: state.errMessage);
            // }

            //else {
           // return CircularProgressIndicator();
           // }
            //       else if (state is ProductsFailure) {
            //         return CustomErrorWidget(errMessage: state.errMessage);}}


            //},
            ),
      );
  }
}