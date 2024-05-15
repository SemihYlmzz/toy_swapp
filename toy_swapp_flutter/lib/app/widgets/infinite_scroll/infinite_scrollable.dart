import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

class InfiniteScrollable extends StatefulWidget {
  const InfiniteScrollable({
    required this.itemCount,
    required this.onRefresh,
    required this.isFetching,
    required this.fetchFailure,
    required this.hasReachedMax,
    required this.fetchMoreItems,
    required this.itemBuilder,
    this.isBottomToTopScroll = false,
    super.key,
  });
  final int itemCount;
  final bool isFetching;
  final bool isBottomToTopScroll;
  final String? fetchFailure;
  final bool hasReachedMax;
  final void Function() fetchMoreItems;
  final void Function() onRefresh;
  final Widget? Function(BuildContext, int) itemBuilder;
  @override
  State<InfiniteScrollable> createState() => _InfiniteScrollableState();
}

class _InfiniteScrollableState extends State<InfiniteScrollable> {
  final _scrollController = ScrollController();
  bool isFakeFetching = false;

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
    return RefreshIndicator(
      onRefresh: () async {
        widget.onRefresh();
      },
      child: !(widget.fetchFailure != null && widget.itemCount == 0)
          ? !(widget.isFetching && widget.itemCount == 0)
              ? !(widget.itemCount == 0 && widget.hasReachedMax)
                  ? ListView.builder(
                      reverse: widget.isBottomToTopScroll,
                      controller: _scrollController,
                      physics: widget.itemCount != 0
                          ? const AlwaysScrollableScrollPhysics()
                          : null,
                      itemCount: widget.fetchFailure != null ||
                              isFakeFetching ||
                              widget.isFetching ||
                              widget.hasReachedMax
                          ? widget.itemCount + 1
                          : widget.itemCount,
                      padding: !widget.isBottomToTopScroll
                          ? SharedPaddings.bottom64
                          : SharedPaddings.top64,
                      itemBuilder: (context, index) {
                        if (widget.fetchFailure != null) {
                          if (index == widget.itemCount) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Something went wrong. Please try again.',
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    widget.fetchMoreItems();
                                  },
                                  child: const Text('Tap to retry'),
                                ),
                              ],
                            );
                          }
                        }

                        if ((widget.isFetching || isFakeFetching) &&
                            index == widget.itemCount) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (widget.hasReachedMax && index == widget.itemCount) {
                          return const Center(
                            child: Text('No more items to show'),
                          );
                        }
                        return widget.itemBuilder(context, index);
                      },
                    )
                  : BaseColumn(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.category,
                          size: 64,
                        ),
                        SharedGap.gap12,
                        const Text('There are no items to show.'),
                        SharedGap.gap12,
                        Text(
                          'Pull down to refresh.',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withOpacity(0.5),
                          ),
                        ),
                        const Icon(Icons.keyboard_arrow_down),
                      ],
                    )
              : const Center(
                  child: CircularProgressIndicator(),
                )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Oops! Something went wrong'),
                  ElevatedButton(
                    onPressed: () {
                      widget.onRefresh();
                    },
                    child: const Text('Tap to retry'),
                  ),
                ],
              ),
            ),
    );
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

  void _fetchMoreOnScroll() {
    if (!_isBottom) {
      return;
    }
    if (widget.isFetching) {
      return;
    }
    if (widget.fetchFailure != null) {
      return;
    }
    if (widget.hasReachedMax) {
      return;
    }
    isFakeFetching = true;
    setState(() {});
    EasyDebounce.debounce(
      'fetchMore',
      const Duration(milliseconds: 500),
      () {
        isFakeFetching = false;
        widget.fetchMoreItems();
        setState(() {});
      },
    );
  }
}
