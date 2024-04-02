import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

// I use the dartz package to handle multiple return values.
// because I have two cases: either success case  or failure case.
// Dartz provides a class called Either for this purpose.
// Either<return type in failure case , return type in success case>
// because I have several types of errors i will make Class or model for error and put it in core file to use in anywhere in App.
// and  i will use it in case return type in failure case.

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
