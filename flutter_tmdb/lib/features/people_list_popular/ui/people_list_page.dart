import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tmdb/core/services/people_list_service.dart';
import 'package:flutter_tmdb/features/people_list_popular/bloc/people_list_popular_bloc.dart';

class PeopleListPage extends StatefulWidget {
  const PeopleListPage({super.key});

  @override
  State<PeopleListPage> createState() => _PeopleListPageState();
}

class _PeopleListPageState extends State<PeopleListPage> {
  late PeopleListPopularBloc peopleListPopularBloc;
  @override
  void initState() {
    super.initState();
    peopleListPopularBloc = PeopleListPopularBloc(PeopleListService())
      ..add(PeopleListPopularFetchAllEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: peopleListPopularBloc,
      builder: (context, state) {
        if (state is PeopleListPopularLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PeopleListPopularSuccess) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.peopleList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsetsGeometry.all(10),
                  child: Column(
                    children: [
                      Text(state.peopleList[index].name),
                      Image.network('https://image.tmdb.org/t/p/w500' + state.peopleList[index].profilePath.toString(), scale: 5,)
                    ],
                  ),
                );
              },
            ),
          );
        } else if (state is PeopleListPopularError) {
          return Center(child: Text(state.message),);
        }
        return Center(child: CircularProgressIndicator(),);
      },
    );
  }
}
