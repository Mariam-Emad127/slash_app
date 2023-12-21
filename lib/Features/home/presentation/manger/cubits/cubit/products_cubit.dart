import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/Features/home/data/repos/home_repo.dart';
  
 

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.homeRepo) : super(ProductsInitial());

  ProductModel ?productModel;
  final HomeRepo homeRepo;

 Future<void>fetchProduct()async{
emit(ProductsLoading());

var result =await homeRepo.fetchProduct();
result.fold((failure) {
  emit(ProductsFailure(failure.errMessage));
  },

 (product) {
   emit(ProductsSuccess(product));
 }
   );

 }
}