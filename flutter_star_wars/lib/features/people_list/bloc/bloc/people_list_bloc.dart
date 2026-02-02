import 'package:bloc/bloc.dart';
import 'package:flutter_star_wars/core/models/people_list_response.dart';
import 'package:flutter_star_wars/core/services/people_service.dart';
import 'package:meta/meta.dart';

part 'people_list_event.dart';
part 'people_list_state.dart';

class PeopleListBloc extends Bloc<PeopleListEvent, PeopleListState> {
  PeopleListBloc(Peopleservice peopleService) : super(PeopleListInitial()) {
    on<PeopleListFetchAllEvent>((event, emit) async {
      emit(PeopleListLoading());
      try {
        var apiPeopleList = await peopleService.getPeople();
        emit(PeopleListSuccess(peopleList: apiPeopleList));
      } catch (e) {
        emit(PeopleListError(message: e.toString()));
      }
    });
  }
}
