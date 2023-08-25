
import 'package:dartz/dartz.dart';

import '../../../../core/error/failers.dart';
import '../model/book_model/book_model.dart';

abstract class HomeRepos {
  Future<Either<Faillure, List<BookModel>>> featurenewestbooks();
  Future<Either<Faillure, List<BookModel>>> featurefeaturesbooks();
  Future<Either<Faillure, List<BookModel>>> featuredsimlierbooks({required String category});
}
