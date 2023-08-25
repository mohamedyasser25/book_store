import 'package:booklyapp/core/error/failers.dart';

import 'package:booklyapp/features/home/data/model/book_model/book_model.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utliz/dio.dart';
import 'searchrepo.dart';

class Searchrepoimple implements Searchrepo{
  @override
  Future<Either<Faillure, List<BookModel>>> featurecustombooks({required String bookname}) async{
    try {
      var value = await DioHelper.get(url: "volumes", query: {
        "Sorting": "newest",
        "q": bookname,
        "Filtering": "free-ebooks",
        "subject": "programming"
      });
      List<BookModel> books = [];
      for (var item in value.data["items"]) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}