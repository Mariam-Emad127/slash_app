import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_product/Features/detailed_product/widget/detailed_product_body.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/presentation/manger/cubits/cubit/products_cubit.dart';

class DetailedProduct extends StatefulWidget {
    DetailedProduct({super.key, required this.productModel});
final ProductModel productModel;


  State<DetailedProduct> createState() => _DetailedProductState();
}

class _DetailedProductState extends State<DetailedProduct> {

    @override
    void initState() {
    BlocProvider.of<ProductsCubit>(context).fetchProduct();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   
    return DetailedProductBody(productModel: widget.productModel);
  }
}