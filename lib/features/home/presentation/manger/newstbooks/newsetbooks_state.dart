part of 'newsetbooks_cubit.dart';

abstract class NewsetbooksState extends Equatable {
  const NewsetbooksState();

  @override
  List<Object> get props => [];
}

class NewsetbooksInitial extends NewsetbooksState {}

class NewsetbooksLoading extends NewsetbooksState {}

class NewsetbooksError extends NewsetbooksState {
  final String errormessage;

  const NewsetbooksError(this.errormessage);
}

class NewsetbooksSuccess extends NewsetbooksState {
  final List<BookModel> books;

  const NewsetbooksSuccess(this.books);
}
