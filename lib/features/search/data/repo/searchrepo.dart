import 'package:dartz/dartz.dart';

import '../../../../core/error/failers.dart';
import '../../../home/data/model/book_model/book_model.dart';

abstract class Searchrepo {
   Future<Either<Faillure, List<BookModel>>> featurecustombooks({required String bookname});
}