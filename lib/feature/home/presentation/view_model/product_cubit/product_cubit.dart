import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop/feature/home/data/models/products/products.dart';
import 'package:shop/feature/home/data/repo/product_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepoImplement) : super(ProductInitial());
  ProductRepoImplement productRepoImplement;

  Future<void> getAllProduct() async {
    emit(ProductLoading());
    var data = await productRepoImplement.getAllProduct();
    data.fold((failure) {
      emit(ProductFailure(failure.errorMessage));
    }, (success) {
      emit(ProductSuccess(success));
    });
  }
}
