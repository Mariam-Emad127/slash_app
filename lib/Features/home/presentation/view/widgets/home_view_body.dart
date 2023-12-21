import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:slash_product/Features/home/presentation/manger/cubits/cubit/products_cubit.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_appbar.dart';
import 'package:slash_product/Features/home/presentation/view/widgets/custom_error.dart';
 import 'package:slash_product/Features/home/presentation/view/widgets/product_info.dart';
 import 'package:slash_product/core/utils/app_router.dart';
 import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
    HomeViewBody({super.key,
    
    });
 
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
  
      if (state is ProductsSuccess) {
        
        return Scaffold(
            backgroundColor: Colors.black,
           // backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                SizedBox(
                  height: 30,
                ),
                CustomAppBar(title: "Splash",icon: Icon(
               Icons.arrow_back,
                size: 35,
                color: Colors.white,
              )),
             Expanded(
                  child: GridView.builder(
                      itemCount: state.product.length,
                      clipBehavior: Clip.none,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          childAspectRatio: 2/ 3.5,
                          mainAxisSpacing: 2),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            GoRouter.of(context).push(AppRouter.kDetail ,extra:state.product[index]);  },
                          child: ProductInfo(productModel:state.product[index]));
                        //);
                      }
                      

                      ),
                ),
              ]),
              //],
            ));
       } else if (state is ProductsFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      }
       else {
        return Container(height:500,width: 500, child: Center(child: CircularProgressIndicator()));
    }
  
    
  
    }
    ); 
 
  }
}
