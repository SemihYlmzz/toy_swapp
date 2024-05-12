import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      isFetching: false,
      fetchFailure: null,
      hasReachedMax: false,
      fetchMoreItems: () {},
      itemBuilder: (context, index) => Text(
        state.acceptableToys[index].toy.name,
      ),
    );
  }
}
