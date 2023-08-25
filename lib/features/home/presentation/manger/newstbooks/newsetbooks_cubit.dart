import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/book_model/book_model.dart';
import '../../../data/rebos/homerepos.dart';

part 'newsetbooks_state.dart';

class NewsetbooksCubit extends Cubit<NewsetbooksState> {
  NewsetbooksCubit(this.homeRepos) : super(NewsetbooksInitial());

  final HomeRepos homeRepos;

  Future<void> featchnewestbooks() async {
    emit(NewsetbooksLoading());

    var response = await homeRepos.featurenewestbooks();
    response.fold((faillure) {
      emit(NewsetbooksError(faillure.errormessage));
    }, (books) {
      emit(NewsetbooksSuccess(books));
    });
  }
}
