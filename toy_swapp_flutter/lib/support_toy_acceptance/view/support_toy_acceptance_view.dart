import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/app/app.dart';

import '../support_toy_acceptance.dart';

class SupportToyAcceptanceView extends StatelessWidget {
  const SupportToyAcceptanceView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenBloc = context.read<SupportToyAcceptanceBloc>();
    final state = context.select((SupportToyAcceptanceBloc bloc) => bloc.state);

    return InfiniteScrollable(
      itemCount: state.acceptableToys.length,
      onRefresh: () {
        screenBloc.add(
          const SupportToyAcceptanceEvent.fetchAcceptableToys(
            isRefresh: true,
          ),
        );
      },
      isFetching: state.isFetching,
      fetchFailure: state.fetchFailure?.toString(),
      hasReachedMax: state.hasReachedMax,
      fetchMoreItems: () {
        screenBloc.add(const SupportToyAcceptanceEvent.fetchAcceptableToys());
      },
      itemBuilder: (context, index) {
        final toy = state.acceptableToys[index].toy;
        return AcceptableToyCard(toy: toy);
      },
      isBottomToTopScroll: true,
    );
  }
}
