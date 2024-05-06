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
    _scrollController.addListener(_fetchMoreOnScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_fetchMoreOnScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final toysState = context.select((ToysBloc bloc) => bloc.state);
    final toysList = toysState.toys.reversed.toList();
    final fetchMoreFailure = toysState.fetchMoreFailure;
    final initializingFailure = toysState.initializingFailure;
    return RefreshIndicator(
      onRefresh: () async {
        context.read<ToysBloc>().add(
              const ToysEvent.fetchLikeableToys(
                clearBeforeFetch: true,
              ),
            );
      },
      child: initializingFailure != null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(initializingFailure.toString()),
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToysBloc>()
                          .add(const ToysEvent.fetchLikeableToys());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            )
          : !toysState.isInitializing
              ? toysList.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('No toys found'),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<ToysBloc>()
                                  .add(const ToysEvent.fetchLikeableToys());
                            },
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      itemCount: toysList.length +
                          (toysState.fetchMoreFailure != null ? 1 : 0),
                      itemBuilder: (context, index) {
                        if (fetchMoreFailure != null &&
                            index == toysList.length) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read<ToysBloc>()
                                  .add(const ToysEvent.clearFetchMoreFailure());
                            },
                            child: const SizedBox(
                              height: 100,
                              child: Center(
                                child: Text(
                                  'Error Occured while fetching more toys.\n'
                                  'Tap to retry.',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          );
                        }
                        return Center(
                          child: Padding(
                            padding: SharedPaddings.bottom32,
                            child:
                                ToyCard(toyAndOwnerConsumer: toysList[index]),
                          ),
                        );
                      },
                    )
              : const Center(child: CircularProgressIndicator()),
    );
  }

  void _fetchMoreOnScroll() {
    final toysState = context.read<ToysBloc>().state;
    if (!_isBottom) {
      return;
    }
    if (toysState.isLoading) {
      return;
    }
    if (toysState.fetchMoreFailure != null) {
      return;
    }
    if (toysState.hasReachedMax) {
      return;
    }
    context.read<ToysBloc>().add(const ToysEvent.fetchLikeableToys());
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
