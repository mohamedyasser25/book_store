import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/rebos/homerepos.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(this.homerepo) : super(SimilerBooksInitial());
  final HomeRepos homerepo;

  Future<void> featuresimilerbooks({required String category}) async{
    emit(SimilerBooksLoading());
   
     var response = await homerepo.featuredsimlierbooks(category: category);
    response.fold((faillure) {
      emit(SimilerBooksError(errormessage: faillure.errormessage));
    }, (books) {
      emit(SimilerBooksSuccerss(books: books));
    });
  }
  }
