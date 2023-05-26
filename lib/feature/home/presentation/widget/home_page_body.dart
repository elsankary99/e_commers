import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/feature/home/presentation/view_model/product_cubit/product_cubit.dart';
import 'package:shop/feature/home/presentation/widget/item_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductSuccess) {
          return GridView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            itemCount: state.allProducts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.8 / 1,
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return ItemCard(
                product: state.allProducts[index],
              );
            },
          );
        }

        if (state is ProductFailure) {
          return Center(
            child: Text(state.errorMessage),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
