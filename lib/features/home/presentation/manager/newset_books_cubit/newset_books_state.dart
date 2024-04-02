part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoading extends NewsetBooksState {}

final class NewsetBooksSuccess extends NewsetBooksState {
  const NewsetBooksSuccess(this.books);
  final List<BookModel> books;
}

final class NewsetBooksFailure extends NewsetBooksState {
  const NewsetBooksFailure(this.errMessage);
  final String errMessage;
}
