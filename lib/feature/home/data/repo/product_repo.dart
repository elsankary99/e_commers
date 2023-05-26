import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:shop/feature/home/data/faluier.dart';
import 'package:shop/feature/home/data/models/products/products.dart';
import 'package:shop/feature/home/data/repo/product_impl.dart';

class ProductRepoImplement extends ProductRepo {
  @override
  Future<Either<Failure, List<Products>>> getAllProduct() async {
    try {
      final baseUrl = "https://fakestoreapi.com/products";

      var response = await Dio().get(baseUrl);
      List<Products> productsList = [];
      for (var product in response.data) {
        productsList.add(product);
      }
      return Right(productsList);
    } on Exception catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
