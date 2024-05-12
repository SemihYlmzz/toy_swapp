import 'package:flutter/material.dart';
import 'package:toy_swapp/app/app.dart';

class SupportToyAcceptanceView extends StatelessWidget {
  const SupportToyAcceptanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return InfiniteScrollable(
      itemCount: 0,
      onRefresh: () {},
      isFetching: false,
      fetchFailure: null,
      hasReachedMax: false,
      fetchMoreItems: () {},
      itemBuilder: (context, index) => Text('index $index'),
    );
  }
}
