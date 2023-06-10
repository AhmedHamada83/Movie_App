// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:booklyapp/core/errors/failure.dart';
import 'package:equatable/equatable.dart';

import '../../../date/model/book_model/book_model.dart';
import '../../../date/repos/home_repo.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
