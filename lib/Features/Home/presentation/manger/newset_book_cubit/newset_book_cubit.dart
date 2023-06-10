import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../date/model/book_model/book_model.dart';
import '../../../date/repos/home_repo.dart';

part 'newset_book_state.dart';

class NewsetBookCubit extends Cubit<NewsetBookState> {
  NewsetBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());

    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit( NewsetBookFailure(failure.errorMessage));
    }, (books) {
      emit(NewsetBookSuccess(books));
    });
  }
}
