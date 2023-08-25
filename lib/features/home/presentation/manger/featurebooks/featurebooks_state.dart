part of 'featurebooks_cubit.dart';

abstract class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

class FeaturebooksInitial extends FeaturedbooksState {}

class FeaturebooksLoading extends FeaturedbooksState {}

class FeaturebooksError extends FeaturedbooksState {
  final String errormessage;

  const FeaturebooksError(this.errormessage);
}

class FeaturebooksSuccess extends FeaturedbooksState {
  final List<BookModel> books;

  const FeaturebooksSuccess(this.books);
}
