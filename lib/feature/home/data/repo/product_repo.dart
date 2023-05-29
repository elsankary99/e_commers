import 'package:either_dart/either.dart';
import 'package:shop/feature/home/data/faluier.dart';
import 'package:shop/feature/home/data/models/products/products.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<Products>>> getAllProduct();
}
