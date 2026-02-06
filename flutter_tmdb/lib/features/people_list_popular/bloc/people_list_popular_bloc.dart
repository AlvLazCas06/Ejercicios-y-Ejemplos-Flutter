import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb/core/models/people_list_popular_response.dart';
import 'package:flutter_tmdb/core/services/people_list_service.dart';
import 'package:meta/meta.dart';

part 'people_list_popular_event.dart';
part 'people_list_popular_state.dart';

class PeopleListPopularBloc extends Bloc<PeopleListPopularEvent, PeopleListPopularState> {
  PeopleListPopularBloc(PeopleListService peopleService) : super(PeopleListPopularInitial()) {
    on<PeopleListPopularFetchAllEvent>((event, emit) async {
      emit(PeopleListPopularLoading());
      try {
        var apiPeopleList = await peopleService.getPopular();
        emit(PeopleListPopularSuccess(peopleList: apiPeopleList));
      } catch (e) {
        emit(PeopleListPopularError(message: e.toString()));
      }
    });
  }
}
