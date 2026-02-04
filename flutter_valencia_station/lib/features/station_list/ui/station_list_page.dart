import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_valencia_station/core/services/station_service.dart';
import 'package:flutter_valencia_station/features/station_list/bloc/station_list_bloc.dart';

class StationListPage extends StatefulWidget {
  const StationListPage({super.key});

  @override
  State<StationListPage> createState() => _StationListPageState();
}

class _StationListPageState extends State<StationListPage> {
  late StationListBloc stationListBloc;

  @override
  void initState() {
    super.initState();
    stationListBloc = StationListBloc(StationService())
      ..add(StationListFetchAllEvent());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Estaciones de bicis de Valencia')),
      body: BlocBuilder<StationListBloc, StationListState>(
        bloc: stationListBloc,
        builder: (context, state) {
          if (state is StationListLoading) {
            return CircularProgressIndicator();
          } else if (state is StationListSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.stationList.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.stationList[index].tipo));
                },
              ),
            );
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
