import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_star_wars/core/services/people_service.dart';
import 'package:flutter_star_wars/features/people_list/bloc/bloc/people_list_bloc.dart';

class PeopleListPageView extends StatefulWidget {
  const PeopleListPageView({super.key});

  @override
  State<PeopleListPageView> createState() => _PeopleListPageViewState();
}

class _PeopleListPageViewState extends State<PeopleListPageView> {
  late PeopleListBloc peopleListBloc;

  @override
  void initState() {
    super.initState();
    peopleListBloc = PeopleListBloc(Peopleservice())
      ..add(PeopleListFetchAllEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Personajes de Starwars')),
      body: BlocBuilder<PeopleListBloc, PeopleListState>(
        bloc: peopleListBloc,
        builder: (context, state) {
          if (state is PeopleListLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is PeopleListSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.peopleList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.peopleList[index].name),);
                }
              ),
            );
          } else if (state is PeopleListError) {
            return Center(child: Text(state.message),);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
