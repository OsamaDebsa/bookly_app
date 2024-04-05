part of 'similer_books_cubit.dart';

sealed class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

final class SimilerBooksInitial extends SimilerBooksState {}

final class SimilerBooksLoading extends SimilerBooksState {}

final class SimilerBooksSuccess extends SimilerBooksState {
  const SimilerBooksSuccess(this.books);
  final List<BookModel> books;
}

final class SimilerBooksFailure extends SimilerBooksState {
  const SimilerBooksFailure(this.errMessage);
  final String errMessage;
}
