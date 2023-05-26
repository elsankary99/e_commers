part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductSuccess extends ProductState {
  final List<Products> allProducts;
  const ProductSuccess(this.allProducts);
}

class ProductFailure extends ProductState {
  final String errorMessage;
  const ProductFailure(this.errorMessage);
}

class ProductLoading extends ProductState {}
