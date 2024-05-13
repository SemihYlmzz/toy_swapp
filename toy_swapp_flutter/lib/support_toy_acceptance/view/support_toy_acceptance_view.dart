import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/app/app.dart';

import '../support_toy_acceptance.dart';

class SupportToyAcceptanceView extends StatelessWidget {
  const SupportToyAcceptanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.select((SupportToyAcceptanceBloc bloc) => bloc.state);
    return InfiniteScrollable(
      itemCount: state.acceptableToys.length,
      onRefresh: () {},
      isFetching: state.isFetching,
      fetchFailure: state.fetchFailure?.toString(),
      hasReachedMax: state.hasReachedMax,
      fetchMoreItems: () {
      },
      itemBuilder: (context, index) {
        final toy = state.acceptableToys[index].toy;
        return Container(
          padding: SharedPaddings.all12,
          margin: SharedPaddings.all12,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
          child: Column(
            children: [
              Text(toy.name),
              Text(toy.description),
              Row(
                children: [
                  const Text('Waiting Time:'),
                  Text(toy.createdAt.toString()),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
