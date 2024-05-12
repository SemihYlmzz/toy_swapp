import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../../app/app.dart';
import '../toys.dart';

class ToysView extends StatelessWidget {
  const ToysView({super.key});

  @override
  Widget build(BuildContext context) {
    final toysState = context.select((ToysBloc bloc) => bloc.state);
    final toysList = toysState.toys.reversed.toList();
    return InfiniteScrollable(
      fetchMoreItems: () {
        context.read<ToysBloc>().add(const ToysEvent.fetchLikeableToys());
      },
      hasReachedMax: toysState.hasReachedMax,
      isFetching: toysState.isFetching,
      itemCount: toysList.length,
      onRefresh: () {
        context.read<ToysBloc>().add(
              const ToysEvent.fetchLikeableToys(isStartOver: true),
            );
      },
      fetchFailure: toysState.fetchFailure?.toString(),
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: SharedPaddings.bottom32,
            child: ToyCard(toyAndOwnerConsumer: toysList[index]),
          ),
        );
      },
    );
  }
}
