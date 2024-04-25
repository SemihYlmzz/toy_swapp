import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    final isInitializing =
        context.select((ToysBloc bloc) => bloc.state.isInitializing);
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ToysBloc>().add(const ToysEvent.fetchLatest10());
      },
      child: !isInitializing
          ? ListView.builder(
              controller: _scrollController,
              itemCount: toysAndOwners.length,
              itemBuilder: (context, index) {
                return Center(
                  child: Padding(
                    padding: SharedPaddings.bottom32,
                    child: ToyCard(
                      toyAndOwnerConsumer:
                          toysAndOwners.reversed.toList()[index],
                    ),
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
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
    final isLoading = context.read<ToysBloc>().state.isLoading;
    if (_isBottom && !isLoading) {
      context.read<ToysBloc>().add(const ToysEvent.fetch10BeforeOldestToy());
    }
  }

  bool get _isBottom {
    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      return false;
    }
    if (_scrollController.position.atEdge &&
        _scrollController.position.pixels != 0) {
      return false;
    }
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll - MediaQuery.sizeOf(context).height);
  }
}
