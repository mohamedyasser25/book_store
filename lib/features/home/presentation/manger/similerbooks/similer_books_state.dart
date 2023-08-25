part of 'similer_books_cubit.dart';

abstract class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

class SimilerBooksInitial extends SimilerBooksState {}

class SimilerBooksSuccerss extends SimilerBooksState {
  final List<BookModel> books;
  const SimilerBooksSuccerss({required this.books});
}

class SimilerBooksError extends SimilerBooksState {
  final String errormessage;

  const SimilerBooksError({required this.errormessage});
}

class SimilerBooksLoading extends SimilerBooksState {}
