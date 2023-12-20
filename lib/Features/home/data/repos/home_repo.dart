import 'package:dio/dio.dart';
import 'package:slash_product/Features/home/data/model/product_model/product_model.dart';
import 'package:slash_product/core/erroe/failure.dart';
import 'package:slash_product/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepo  {
  final ApiService apiService;

  HomeRepo (this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProduct() async {
    try {
      var data = await apiService.get();
      List<ProductModel> product = [];
      for (var item in data['data']) {
        product.add(ProductModel.fromJson(item));
      }

      return right(product);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
  }