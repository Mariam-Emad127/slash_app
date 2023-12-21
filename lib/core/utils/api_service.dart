import 'package:dio/dio.dart';

class ApiService{
final String baseUrl="https://slash-backend.onrender.com/product";

final Dio dio;

  ApiService(  this.dio);

Future<Map<String,dynamic>>get()async{

var response=await dio.get(baseUrl);
return response.data;

}

}