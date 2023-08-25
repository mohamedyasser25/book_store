
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failers.dart';
import '../../../../core/utliz/dio.dart';
import '../model/book_model/book_model.dart';
import 'homerepos.dart';

class HomeReposimple implements HomeRepos {
  @override
  Future<Either<Faillure, List<BookModel>>> featurenewestbooks() async {
    try {
      var value = await DioHelper.get(url: "volumes", query: {
        "Sorting": "newest",
        "q": "programming",
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

  @override
  Future<Either<Faillure, List<BookModel>>> featurefeaturesbooks() async {
    try {
      var value = await DioHelper.get(url: "volumes", query: {
        "q": "Flutter",
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

  @override
  Future<Either<Faillure, List<BookModel>>> featuredsimlierbooks(
      {required String category}) async {
    try {
      var value = await DioHelper.get(url: "volumes", query: {
        "q":category=="Computing"?"programming":"codeing",
        "Filtering": "free-ebooks",
        "subject": category,
      
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
