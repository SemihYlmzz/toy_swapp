import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../toys.dart';

class ToysView extends StatefulWidget {
  const ToysView({super.key});

  @override
  State<ToysView> createState() => _ToysViewState();
}

class _ToysViewState extends State<ToysView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    final toysAndOwners = context.select((ToysBloc bloc) => bloc.state.toys);

    return RefreshIndicator(
      onRefresh: () async {
        // context.read<ToysBloc>().add(const ToysEvent.fetchNewest10Toys());
      },
      child: ListView.builder(
        controller: _scrollController,
        itemCount: toysAndOwners.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: SharedPaddings.bottom32,
              child: ToyCard(
                index: index,
                key: ValueKey(toysAndOwners.reversed.toList()[index].toy.id),
                toyAndOwnerConsumer: toysAndOwners.reversed.toList()[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<ToysBloc>().add(const ToysEvent.fetch10BeforeOldestToy());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.65);
  }
}
