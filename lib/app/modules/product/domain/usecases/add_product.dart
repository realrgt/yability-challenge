import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:yability_challenge/app/core/errors/failures.dart';
import 'package:yability_challenge/app/modules/product/domain/repositories/product_repository.dart';

import '../../../../core/usecases/usecase.dart';
import '../entities/product.dart';

class AddProduct implements IUseCase<Product, Params> {
  final IProductRepository repository;
  AddProduct({required this.repository});

  @override
  Future<Either<Failure, Product>> call(Params params) {
    return repository.addProduct(params.product);
  }
}

class Params extends Equatable {
  final Product product;
  Params({required this.product});

  @override
  List<Object> get props => [product];
}